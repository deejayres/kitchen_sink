module KitchenSink
  class SinksController < ::ApplicationController
    helper KitchenSink::ApplicationHelper
    before_action :forward_all_inherited_url_helpers!

    def sink
      @skip_sections = apply_skip_sections!
      render layout: appropriate_layout
    end

    private

    def forward_all_inherited_url_helpers!
      # because we might use an inherited parent app
      # layout file, which may contain existing links
      # using generated helper methods, we need to
      # forward any calls to those in the engine's
      # context up to the parent app to prevent
      # forcing the parent app to rewrite them
      all_helpers = (main_app.routes.url_helpers.methods - Object.methods)
      url_helpers = all_helpers.select do |possible_helper|
        possible_helper.to_s.ends_with?('_url', '_path')
      end

      url_helpers.each do |helper|
        forward_method_to_parent_app!(helper)
      end
    end

    def forward_method_to_parent_app!(method)
      KitchenSink::ApplicationHelper.redefine_method(method) do |*args|
        main_app.public_send(method, *args)
      end
    end

    def appropriate_layout
      return sanitized_layout_file_param if layout_file_param
      default_layout_file
    end

    def layout_file_param
      params[:layout_file]
    end

    def sanitized_layout_file_param
      # TODO: use a whitelist mechanism of some kind
      # possibly pre-load the known layout files' names
      # from the directory and restrict to one of those
      layout_file_param
    end

    def default_layout_file
      'application'.freeze
    end

    def apply_skip_sections!
      @skip_sections = []
      skip_sections_param.each do |skip|
        @skip_sections << skip.to_sym
      end
    end

    def skip_sections_param
      params[:skip_sections] || []
    end
  end
end
