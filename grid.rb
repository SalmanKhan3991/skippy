class Grid

  attr_reader :dimension

  def initialize(dimension)
    # Dimension of the grid
    @dimension = dimension
  end

  # Does the point lies outside the boundary of the grid?
  def is_out_of_boundary?(point)
    point.x < 0 || point.y < 0 || point.x >= @dimension || point.y >= @dimension
  end
end