require "rails/generators"

module Bsvc
  module Generators
    class ComponentGenerator < Rails::Generators::Base
      source_root(File.expand_path("../../../../", __FILE__))

      class_option :name, type: :string, default: ''

      def copy_single_component
        copy_components_to_app
        copy_helpers_to_app
      end

      private

      def copy_components_to_app
        directory("app/components/#{@options[:name]}", "app/components/#{@options[:name]}")
      end

      def copy_helpers_to_app
        if @options[:name].include?('/')
          copy_file("app/helpers/#{@options[:name]}_helper.rb", "app/helpers/#{@options[:name]}_helper.rb")
        else
          directory("app/helpers/#{@options[:name]}", "app/helpers/#{@options[:name]}")
        end
      end
    end
  end
end