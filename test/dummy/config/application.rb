require_relative 'boot'

# require 'rails/all'
require 'action_controller/railtie'
# require 'action_cable/engine'
# require 'action_mailer/railtie'
require 'active_model/railtie'
require 'sprockets/railtie'
require 'rails/test_unit/railtie'

Bundler.require(*Rails.groups)
require 'kitchen_sink'

module Dummy
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end
