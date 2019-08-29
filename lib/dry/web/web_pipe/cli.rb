require "thor"

module Dry
  module Web
    module WebPipe
      class CLI < Thor
        desc "new APP", "Generate a new dry-web-web_pipe project"
        option :arch, required: false, default: "umbrella", enum: %w[umbrella flat], banner: "ARCH", desc: "Project architecture (umbrella/flat)"
        def new(app_name)
          case options[:arch]
          when "umbrella"
            require "dry/web/web_pipe/generators/umbrella_project"
            Generators::UmbrellaProject.new(app_name).call
          when "flat"
            require "dry/web/web_pipe/generators/flat_project"
            Generators::FlatProject.new(app_name).call
          end
        end

        desc "generate GENERATOR", "Generate a new component for an existing dry-web-web_pipe project"
        require "dry/web/web_pipe/cli/generate"
        subcommand "generate", CLI::Generate
      end
    end
  end
end
