class Point

  attr_accessor :x, :y

  def initialize(x,y)
    # x-Coordinate
    @x = x

    # y-coordinate
    @y = y
  end

  # Coordinates of a point as a string
  def to_s
    "(#{@x}, #{@y})"
  end
end