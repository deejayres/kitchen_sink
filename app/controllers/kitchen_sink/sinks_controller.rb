require_dependency 'kitchen_sink/application_controller'

module KitchenSink
  class SinksController < ApplicationController
    def sink; render layout: 'application'; end
  end
end
