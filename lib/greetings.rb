require 'yaml'
require "greetings/helper"
require "greetings/version"

module Rails
  module Greetings
    if defined?(::Rails::Engine)
      class Engine < ::Rails::Engine
        initializer 'rails-greetings', group: :all do |app|
          ActiveSupport.on_load(:action_controller) do
            include Rails::Greetings::Helper
          end

          ActiveSupport.on_load(:action_view) do
            include Rails::Greetings::Helper
          end
        end
      end
    end
  end
end