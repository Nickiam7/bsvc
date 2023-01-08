# frozen_string_literal :true

module Heading
  module HeadingHelper
    def h(**options)
      if block_given?
        render(Heading::HComponent.new(**options)) do
          yield
        end
      else
        render(Heading::HComponent.new(**options))
      end
    end
  end
end
