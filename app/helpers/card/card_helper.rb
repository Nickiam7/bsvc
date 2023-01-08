# frozen_strin_literal: true

module Card
  module CardHelper
    def card(**options)
      render(Card::CardComponent.new(**options)) do |c|
        yield(c)
      end
    end
  end
end
