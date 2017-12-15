# Decorator pattern segue uma modelagem em que você deseja alterar o comportamento de um objeto,
# sem a necessidade de alterar o objeto em questão e os objetos que dependem dele
# Este padrão usufrui de um outro padrão, chamado DependenciInjection, onde você passa para a classe
# que necessita de um comportamento específico um objeto que deve ser usado como "base"

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

burger = Burger.new

LargerBurger.new(burger).cost # -> 20.0
DoubleBurger.new(burger).cost # -> 17.0
