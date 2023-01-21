# frozen_string_literal: true

module Forms
  module Input
    class InputComponent < ViewComponent::Base
      def initialize(**options)
        @method = options[:method]
        @object = options[:object]
        @scope = options[:scope]
        @type = options.dig(:html, :type)
        @classes = options.dig(:html, :class)
        @floating = options.dig(:html, :floating)
        @placeholder = options.dig(:html, :placeholder)
        @onchange = options.dig(:html, :onchange)
        @html = options[:html]
        classes_builder
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
          "#{@object}_#{@method}"
        end
      end

      def classes_builder
        if @html[:class]
          @html[:class] = "form-control #{@classes}".strip
        end
      end
    end
  end
end