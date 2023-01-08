require "rails/generators"

module Bsvc
  module Generators
    class ComponentsGenerator < Rails::Generators::Base
      source_root(File.expand_path("../../../../", __FILE__))

      def copy_components
        directory('app/components', 'app/components')
        directory('app/helpers', 'app/helpers')
      end
    end
  end
end