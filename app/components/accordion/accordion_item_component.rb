# frozen_strin_literal: true

module Accordion
  class AccordionItemComponent < ViewComponent::Base

    def initialize(**options)
      @id = options[:id]
      @title = options[:title]
      @index = options[:index]
      @target = options[:target]
      @active = options[:active]
      @parent = options[:parent]
    end

    private

    def active_item?
      @active
    end

    def id
      "id=#{@id}" if @id
    end
  end
end
