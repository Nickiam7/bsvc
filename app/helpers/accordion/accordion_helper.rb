# frozen_strin_literal: true

module Accordion
  module AccordionHelper
    def accordion(**options)
      render(Accordion::AccordionComponent.new(**options)) do |c|
        yield(c)
      end
    end

    def item(c, **options)
      c.with_item(**options) do
        yield
      end
    end
  end
end