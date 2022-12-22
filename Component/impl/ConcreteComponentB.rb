# Те ж саме, як і у класі ConcreteComponentA:
# visit_concrete_component_b => ConcreteComponentB
require "./Component/Component"

class ConcreteComponentB < Component

  def accept(visitor)
    visitor.visit_concrete_component_b(self)
  end

  def special_method_of_concrete_component_b
    "B"
  end
end
