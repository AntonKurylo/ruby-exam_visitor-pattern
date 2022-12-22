# Конкретні Відвідувачі реалізують кілька версій того самого алгоритму,
# які можуть працювати з усіма класами конкретних компонентів.
require "./Visitor/Visitor"

class ConcreteVisitor1 < Visitor
  def visit_concrete_component_a(element)
    puts "#{element.exclusive_method_of_concrete_component_a} + #{self.class}"
  end

  def visit_concrete_component_b(element)
    puts "#{element.special_method_of_concrete_component_b} + #{self.class}"
  end
end
