# Program to and Interface, not to an Implementation
# This design pattern is similar to Open Closed Principle

module Interface
  def commom_method
    fail NotImplementedError
   end
end

class ImplementationOne
  include Interface

  def commom_method
    puts 'Make something'
  end
end

class ImplementationTwo
  include Interface

  def commom_method
    puts 'Make another thing'
  end
end

def Context
  def initialize(implementation)
    @implementation = implementation
  end

  def handle_implementations
    @implementation.commom_method
  end
end

implementation_one = ImplementationOne.new
implementation_two = ImplementationTwo.new

Context.new(implementation_one).handle_implementations # -> Make something
Context.new(implementation_two).handle_implementations # -> Make another thing
