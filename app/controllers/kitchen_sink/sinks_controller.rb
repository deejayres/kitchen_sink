require_dependency 'kitchen_sink/application_controller'

module KitchenSink
  class SinksController < ApplicationController
    def sink
      render layout: appropriate_layout
    end

    private

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
  end
end
