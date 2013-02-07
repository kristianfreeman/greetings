require 'yaml'
require "moshimoshi/helper"
require "moshimoshi/version"

module Rails
  module Moshimoshi
    if defined?(::Rails::Engine)
      class Engine < ::Rails::Engine
        initializer 'rails-moshimoshi', group: :all do |app|
          ActiveSupport.on_load(:action_controller) do
            include Rails::Moshimoshi::Helper
          end

          ActiveSupport.on_load(:action_view) do
            include Rails::Moshimoshi::Helper
          end
        end
      end
    end
  end
end