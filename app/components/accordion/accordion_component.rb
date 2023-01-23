# frozen_string_literal: true

module Accordion
  def default_plus_passed_classes(defaults, classes)
    "#{defaults} #{classes}".strip
  end

  module_function :default_plus_passed_classes

  class AccordionComponent < ViewComponent::Base
    renders_many :items, AccordionItemComponent

    def initialize(**options)
      @id = options[:id]
      @classses = options[:classses]
      @styles = options[:styles]

      @default_classses = 'accordion'
    end

    private

    def styles
      @styles if @styles.present?
    end

    def id
      "id=#{@id}" if @id
    end

    def classes
      "class=#{Accordion.default_plus_passed_classes(
        @default_classses,
        @classes
      )}"
    end
  end
end