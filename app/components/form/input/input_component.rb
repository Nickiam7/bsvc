# frozen_string_literal: true

module Form
  module Input
    class InputComponent < ViewComponent::Base
      def initialize(**options)
        @type = options[:type]
        @placeholder = options[:placeholder]
        @classes = options[:classes]
        @method = options[:method]
        @object = options[:object]
        @onchange = options[:onchange]
        @scope = options[:scope]
      end

      def call
        text_input
      end

      private

      def text_input
        if scoped?
          @scope.text_field(@method, {type: @type, onchange: @onchange, class: "form-control #{@classes}".strip })
        else
          text_field(@object, @method, {type: @type, onchange: @onchange, class: "form-control #{@classes}".strip })
        end
      end

      def scoped?
        @scope.present?
      end
    end
  end
end