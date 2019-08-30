require "securerandom"
require "dry/web/web_pipe/generators/abstract_project"

module Dry
  module Web
    module WebPipe
      module Generators
        class FlatProject < AbstractProject
          def populate_templates
            super
            # Provisional, as it is going to be shared by all generators
            add_template("flat_project/config.ru.tt", "config.ru")
            add_views
            add_actions
            add_web
          end

          private

          def add_boot
            add_template("flat_project/boot.rb.tt", "system/boot.rb")
          end

          def add_application
            add_template("flat_project/router.rb.tt", "lib/#{underscored_project_name}/router.rb")
          end

          def add_views
            add_template('welcome.rb.tt', "lib/#{underscored_project_name}/views/welcome.rb")
          end

          def add_actions
            add_template('web.rb.tt', "lib/#{underscored_project_name}/web.rb")
            add_template('root.rb.tt', "lib/#{underscored_project_name}/actions/root.rb")
          end

          def add_web
            add_template('application.html.slim', 'web/templates/layouts/application.html.slim')
            add_template('welcome.html.slim', 'web/templates/welcome.html.slim')
          end
        end
      end
    end
  end
end
