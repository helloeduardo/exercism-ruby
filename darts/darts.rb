=begin
Write your code for the 'Darts' exercise in this file. Make the tests in
`darts_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/darts` directory.
=end

class Circle
  def initialize(radius)
    @radius = radius
  end

  def contains_point?(x, y)
    (x**2 + y**2) <= @radius**2
  end
end

class Darts
  def initialize(x, y)
    @x = x
    @y = y
    @inner_circle = Circle.new(1)
    @middle_circle = Circle.new(5)
    @outer_circle = Circle.new(10)
  end

  def score
    if @inner_circle.contains_point?(@x, @y)
      10
    elsif @middle_circle.contains_point?(@x, @y)
      5
    elsif @outer_circle.contains_point?(@x, @y)
      1
    else #miss
      0
    end
  end
end
