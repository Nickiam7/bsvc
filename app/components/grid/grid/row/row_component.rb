# frozen_string_literal: true

module Grid
  module Row
    class RowComponent < ViewComponent::Base
      renders_many :columns, Columns::ColumnsComponent

      def initialize(**options)
        @classes = options[:classes]
        @styles = options[:styles]
      end

      def call
        content_tag(:div,
          content,
          class: default_plus_passed_classes,
          style: @styles
        )
      end

      private

      def default_plus_passed_classes
        "row #{@classes}".strip
      end
    end
  end
end
