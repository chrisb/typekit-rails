require 'rails/generators'

module Typekit
  module Generators
    class InstallGenerator < ::Rails::Generators::Base
      desc 'Inject Typekit helpers into application code'

      def inject_javascript
        application_js_path = 'app/assets/javascripts/application.js'
        if ::File.exists?(::File.join(destination_root, application_js_path))
          inject_into_file application_js_path, before: '//= require_tree' do
            "//= require typekit\n"
          end
        end
      end

      # def inject_view_helper
      #   application_controller_path = 'app/controllers/application_controller.rb'
      #   if ::File.exists?(::File.join(destination_root, application_controller_path))
      #     inject_into_file application_controller_path, after: "class ApplicationController < ActionController::Base\n" do
      #       "  helper :typekit\n"
      #     end
      #   end
      # end

      def inject_into_layout
        application_layout_path_prefix = 'app/views/layouts/application.html'

        api_key = ask 'What is your kit ID (leave blank to specify later):'
        api_key = '- YOUR KIT ID HERE -' if api_key.blank?

        layout_templates = { slim: { content: "  = typekit '#{api_key}'", after: "head\n" }}
        layout_templates[:erb] =   { content: "  <%#{layout_templates[:slim][:content].lstrip} %>", after: "<head>\n" }

        layout_templates.each_pair do |lang,options|
          path = ::File.join(destination_root, "#{application_layout_path_prefix}.#{lang}")
          if ::File.exists?(path)
            inject_into_file path, after: options[:after] do
              "#{options[:content]}\n"
            end
          end
        end
      end

    end
  end
end
