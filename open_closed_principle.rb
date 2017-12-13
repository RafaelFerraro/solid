class Square
  attr_reader :length

  def initialize(length)
    @length = length
  end
end

class Circle
  attr_reader :radius

  def initialize(radius)
    @radius = radius
  end
end

class SumTotalArea
  attr_reader :shape

  def initialize(shape)
    @shape = shape
  end

  def sum
    if shape.is_a?(Square)
      shape.length * 2
    elsif shape.is_a?(Circle)
      (shape.radius + 3) * 5
    end
  end
end

###

class ShapesInterface
  def calculate
    fail NotImplementedError
  end
end

class Square
  include ShapesInterface
  attr_reader :length

  def initialize(length)
    @length = length
  end

  def calculate
    @length * 2
  end
end

class Circle
  include ShapesInterface
  attr_reader :radius

  def initialize(radius)
    @radius = radius
  end

  def calculate
    (@radius + 3) * 5
  end
end

class SumTotalArea
  attr_reader :shape

  def initialize(shapes)
    @shapes = shapes
  end

  def sum
    shapes.map(&:calculate).reduce(:+)
  end
end
