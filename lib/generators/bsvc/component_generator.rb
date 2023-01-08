require "rails/generators"

module Bsvc
  module Generators
    class ComponentGenerator < Rails::Generators::Base
      source_root(File.expand_path("../../../../", __FILE__))

      class_option :name, type: :string, default: ''

      def copy_single_component
        directory("app/components/#{@options[:name]}", "app/components/#{@options[:name]}")
        directory("app/helpers/#{@options[:name]}", "app/helpers/#{@options[:name]}")
      end
    end
  end
end