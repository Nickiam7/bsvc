module Form
  module InputHelper
    def input(**options)
      render(Input::InputComponent.new(**options))
    end
  end
end