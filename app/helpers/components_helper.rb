module ComponentsHelper
  def card(**options)
    render(Card::CardComponent.new(**options)) do |c|
      yield(c)
    end
  end

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
