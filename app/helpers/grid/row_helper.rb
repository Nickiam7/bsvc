module Grid
  module RowHelper
    def row(**options)
      render(Row::RowComponent.new(**options)) do |c|
        yield(c)
      end
    end
  end
end