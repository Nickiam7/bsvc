module Grid
  module RowHelper
    def row(**options)
      render(Row::RowComponent.new(**options)) do |c|
        yield(c)
      end
    end

    def column(c, **options)
      c.with_column(**options) do
        yield
      end
    end
  end
end