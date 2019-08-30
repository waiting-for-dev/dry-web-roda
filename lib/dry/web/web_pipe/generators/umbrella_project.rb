require "securerandom"
require "dry/web/web_pipe/generators/abstract_project"
require "dry/web/web_pipe/generators/sub_app"

module Dry
  module Web
    module WebPipe
      module Generators
        class UmbrellaProject < AbstractProject
          private

          def add_boot
            add_template("umbrella_project/boot.rb.tt", "system/boot.rb")
          end

          def add_application
            add_template("umbrella_project/router.rb.tt", "system/#{underscored_project_name}/router.rb")
          end

          def post_process_callback
            Dir.chdir(target_dir) do
              Generators::SubApp.new("main", umbrella: target_dir).call
            end
          end
        end
      end
    end
  end
end
