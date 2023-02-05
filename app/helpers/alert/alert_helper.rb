#frozen_string_literal: true

module Alert
  module AlertHelper
    def alert_message(**options)
      if block_given?
        render(Alert::AlertComponent.new(**options)) do
          yield
        end
      else
        render(Alert::AlertComponent.new(**options))
      end
    end
  end
end