module Bsvc
  class Engine < ::Rails::Engine
    initializer('bsvc.load_helpers') do
      ActiveSupport.on_load(:action_controller) do
        helper(Bsvc::Engine.helpers)
      end
    end
  end
end