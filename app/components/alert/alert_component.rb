# frozen_string_literal: true

module Alert
  class AlertComponent < ViewComponent::Base
    def initialize(**options)
      @variant = options[:variant]
      @dismiss = options[:dismiss]
      @message = options[:message]
      @icon = options[:icon]
    end

    private

    def dismissible?
      true unless @dismiss == false
    end

    def dismissible_classes
      'alert-dismissible fade show' if dismissible?
    end

    def icon?
      @icon
    end

    def icon_classes
      'd-flex align-items-center' if icon?
    end

    def variant
      @variant || 'primary'
    end

    def message
      @message || content
    end
  end
end