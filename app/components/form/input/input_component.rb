# frozen_string_literal: true

module Form
  module Input
    class InputComponent < ViewComponent::Base
      def initialize(**options)
        @method = options[:method]
        @object = options[:object]
        @scope = options[:scope]
        @type = options.dig(:html, :type)
        @floating = options.dig(:html, :floating)
        @classes = options.dig(:html, :class)
        @placeholder = options.dig(:html, :placeholder)
        @onchange = options.dig(:html, :onchange)
        @html = options[:html]
      end

      private

      def text_input
        if scoped?
          @scope.text_field(@method, @html)
        else
          text_field(@object, @method, @html)
        end
      end

      def scoped?
        @scope.present?
      end

      def floating_label_id
        if scoped?
          @scope.options[:html][:id]
        else
          "#{@object.to_s}_#{@method.to_s}"
        end
      end
    end
  end
end