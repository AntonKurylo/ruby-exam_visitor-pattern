# Інтерфейс Компонент оголошує метод accept, який в якості аргумента
# може приймати будь-який об'єкт, який реалізує інтерфейс відвідувача
class Component
  def accept(visitor)
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end
end
