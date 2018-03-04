# Bad example

class Animal
  def walk
    puts 'Walk'
  end
end

class Dog < Animal
  def run
    puts 'Run'
  end
end

animal = Animal.new
dog = Dog.new

animal.walk => "Walk"
dog.walk => "Walk"

dog.run => "Run"
animal.run => # NoMethodError

# Subtypes must be substitutable for their base types
# So, they must have the same interface.
# good example

class Animal
  def walk
    puts 'Walk'
  end

  def run
    raise NotImplementedError
  end
end

class Dog
  def run
    puts 'Run'
  end
end

animal = Animal.new
dog = Dog.new

animal.walk => "Walk"
dog.walk => "Walk"

dog.run => "Run"
animal.run => # NotImplementedError
