# frozen_string_literal: true

module Container
  class ContainerComponent < ViewComponent::Base
    def initialize(**options)
      @container = options[:container]
      @classes = options[:classes]

      @container_class = container_class
    end

    private

    def container_class
      @container.present? ? @container : 'container'
    end
  end
end
