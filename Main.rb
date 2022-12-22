require_relative "Component/impl/ConcreteComponentA"
require_relative "Component/impl/ConcreteComponentB"
require_relative "Visitor/impl/ConcreteVisitor1"
require_relative "Visitor/impl/ConcreteVisitor2"

# Клієнтський код може виконувати операції відвідувача над будь-яким набором
# елементів, не з'ясовуючи їх конкретні класи. Операція прийняття спрямовує
# виклик до відповідної операції в об'єкті відвідувача.
def client_code(components, visitor)
  components.each do |component|
    component.accept(visitor)
  end
end

components = [ConcreteComponentA.new, ConcreteComponentB.new]

puts "The client code works with all visitors via the base Visitor interface:"
visitor1 = ConcreteVisitor1.new
client_code(components, visitor1)

puts "It allows the same client code to work with different types of visitors:"
visitor2 = ConcreteVisitor2.new
client_code(components, visitor2)