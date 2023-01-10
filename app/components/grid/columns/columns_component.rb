# frozen_string_literal: true

module Grid
  module Columns
    class ColumnsComponent < ViewComponent::Base
      BREAK_POINTS = [:xs, :sm, :md, :lg, :xl, :xxl]

      def initialize(**options)
        @columns = options[:col]
        @offsets = options[:offset]
        @classes = options[:classes]
        @styles = options[:styles]
      end

      def call
        content_tag(:div,
          content,
          class: column_class_builder,
          style: @styles,
        )
      end

      private

      def column_class_builder
        "#{column_breakpoint} #{column_offset} #{@classes}".strip
      end

      def class_parser(option, klass)
        unless option.nil?
          option.map do |key, value|
            if BREAK_POINTS.include?(key)
              "#{klass}-#{key}-#{value} "
            end
          end.join('').strip
        end
      end

      def column_breakpoint
        class_parser(@columns, 'col')
      end

      def column_offset
        class_parser(@offsets, 'offset')
      end
    end
  end
end