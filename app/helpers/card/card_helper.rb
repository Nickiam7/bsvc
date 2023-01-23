# frozen_strin_literal: true

module Card
  module CardHelper
    def card(**options)
      render(Card::CardComponent.new(**options)) do |c|
        yield(c)
      end
    end

    def header(c, **options)
      c.with_header(**options) do
        yield
      end
    end

    def footer(c, **options)
      c.with_footer(**options) do
        yield
      end
    end
  end
end
