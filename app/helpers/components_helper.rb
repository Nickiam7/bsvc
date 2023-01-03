module ComponentsHelper
  def card(**options)
    render(Card::CardComponent.new(**options)) do |c|
      yield(c)
    end
  end
end
