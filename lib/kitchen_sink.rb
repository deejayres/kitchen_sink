require "kitchen_sink/engine"

module KitchenSink
  DEFAULT_ACTIVE_SECTIONS = %w(
    basic_html_sink
    foundation_sink
  ).freeze

  mattr_accessor :skip_sections

  def self.active_sections(skip_list = [])
    # refactor to whatever source of configuration
    # could be a passed argument
    # could be a config file
    # could be model based
    DEFAULT_ACTIVE_SECTIONS.reject {|section| skip_list.include?(section) }.map(&:to_sym)
  end
end
