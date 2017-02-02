require "roda"
require "roda/plugins/flow"
require "dry-configurable"

module Dry
  module Web
    module Roda
      class Application < ::Roda
        extend Dry::Configurable

        setting :container
        setting :routes

        plugin :multi_route
        plugin :flow

        def self.configure(&block)
          container = super
          use(container[:rack_monitor])
          container
        end

        def self.resolve(name)
          config.container[name]
        end

        def self.[](name)
          resolve(name)
        end

        def self.load_routes!
          Dir[root.join("#{config.routes}/**/*.rb")].each { |f| require f }
        end

        def self.root
          config.container.config.root
        end
      end
    end
  end
end
