module Grid
  module ContainerHelper
    def container(**options)
      render(Container::ContainerComponent.new(**options)) do
        yield
      end
    end
  end
end
