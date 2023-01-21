# frozen_string_literal: true

module Forms
  module Form
    class FormComponent < ViewComponent::Base
      def initialize(**options)
        @url = options[:url]
        @scope = options[:scope]
      end
    end
  end
end