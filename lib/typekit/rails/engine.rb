module Typekit
  module Rails
    class Engine < ::Rails::Engine

      initializer 'typekit.action_controller' do |app|
        ActiveSupport.on_load :action_controller do
          helper Typekit::ViewHelper
        end
      end

    end
  end
end
