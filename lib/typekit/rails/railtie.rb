module Typekit
  module Rails
    class Railtie < ::Rails::Railtie
      generators do
        require 'typekit/generators/install_generator'
      end
    end
  end
end
