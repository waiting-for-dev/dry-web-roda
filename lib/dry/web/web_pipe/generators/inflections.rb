require 'dry/web/web_pipe/inflector'

module Dry
  module Web
    module WebPipe
      module Generators
        module Inflections
          module_function

          def underscored_name(name)
            Inflector.underscore(name)
          end

          def camel_cased_name(name)
            Inflector.camelize(underscored_name(name))
          end
        end
      end
    end
  end
end
