# frozen_string_literal: true

module Card
  def default_plus_passed_classes(defaults, classes)
    "#{defaults} #{classes}".strip
  end

  module_function :default_plus_passed_classes

  class CardComponent < ViewComponent::Base
    renders_one :header, 'HeaderComponent'
    renders_one :footer, 'FooterComponent'

    def initialize(**options)
      @classes = options[:classes]
      @styles = options[:styles]
    end

    class HeaderComponent < ViewComponent::Base

      def initialize(**options)
        @classes = options[:classes]
        @styles = options[:styles]

        @default_classses = 'card-header'
      end

      def call
        content_tag(:div,
          content,
          class: Card.default_plus_passed_classes(
            @default_classses,
            @classes
          ),
          style: @styles
        )
      end
    end

    class FooterComponent < ViewComponent::Base

      def initialize(**options)
        @classes = options[:classes]
        @styles = options[:styles]

        @default_classses = 'card-footer text-muted'
      end

      def call
        content_tag(:div,
          content,
          class: Card.default_plus_passed_classes(
            @default_classses,
            @classes
          ),
          style: @styles
        )
      end
    end
  end
end
