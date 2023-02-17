class Triangle
  # write code here
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    triangle_validation
    if a == b && b == c
      :equilateral
    elsif a == b || b == c || a == c
      :isosceles
    else
      :scalene
    end
  end

  def positive_number?
    [a, b, c].all?(&:positive?)
  end

  def triangle_inequality?
    a + b > c && a + c > b && b + c > a
  end

  def triangle_validation
    raise TriangleError unless positive_number? && triangle_inequality?
  end

  class TriangleError < StandardError
  end
end
