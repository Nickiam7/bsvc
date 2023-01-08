# frozen_string_literal: true

module Heading
  class HComponent < ViewComponent::Base
    def initialize(**options)
      @text = options[:text]
      @tag = options[:tag]
      @classes = options[:classes]
      @styles = options[:styles]
    end

    def call
      content_tag(@tag,
        content || @text,
        class: @classes,
        style: @styles
      )
    end
  end
end
