module Grid::ContainerHelper
  def container(**options)
    render(Container::ContainerComponent.new(**options)) do
      yield
    end
  end
end
