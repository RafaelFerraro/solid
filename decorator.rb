# Decorator pattern segue uma modelagem em que você deseja alterar o comportamento de um objeto,
# sem a necessidade de alterar o objeto em questão e os objetos que dependem dele
# Este padrão usufrui de um outro padrão, chamado DependenciInjection, onde você passa para a classe
# que necessita de um comportamento específico um objeto que deve ser usado como "base"
# Esse padrão é mais conveniente do que o uso de herança e/ou subclasses, pois subclasses são estáticas

class Burger
  def cost
    10.0
  end
end

class DoubleBurger
  def initialize(burger)
    @burger = burger
  end

  def cost
    @burger.cost + 10.0
  end
end

class LargerBurger
  def initialize(burger)
    @burger = burger
  end

  def cost
    @burger.cost + 7.0
  end
end

def BurgerWithFries
  def initialize(burger)
    @burger = burger
  end

  def cost
    @burger.cost + 5.0
  end
end

burger = Burger.new

larger_burger = LargerBurger.new(burger).cost # -> 17.0
DoubleBurger.new(burger).cost # -> 20.0
BurgerWithFries.new(larger_burger).cost # -> 22.0

# Aqui, se optarmos por usar herança, teríamos que implementar uma classe para cada tipo + acompanhamento de Burger

class Burger
  def cost
    10
  end
end

def LargerBurger < Burger
  def cost
    super + 7
  end
end

def LargerBurgerWithFries < LargerBurger
  def cost
    super + 5
  end
end
