# Інтерфейс Відвідувача оголошує набір методів відвідування, які відповідають
# класам компонентів. Сигнатура методу відвідування дозволяє відвідувачеві
# визначити конкретний клас компонента, з яким має справу.
class Visitor

  def visit_concrete_component_a(_element)
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end

  def visit_concrete_component_b(_element)
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end
end
