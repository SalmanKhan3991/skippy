class Kangaroo

  attr_reader :position

  def initialize(name)
    # Name of the Kangaroo
    @name = name

    # Stores position of the Kangaroo on the grid
    @position = Point.new(0,0)

    # Stores number of hops taken by the Kangaroo
    @hops = 0
  end

  # Can the Kangaroo move in the given direction on the grid?
  def can_move?(direction, grid)
    contender = update(direction)
    if grid.is_out_of_boundary?(contender)
      puts "Oops, hit the boundary: #{contender.to_s}"
      false
    else
      true
    end
  end

  # Move the Kangaroo to the new direction
  def hop!(direction)
    @position = update(direction)
    @hops += 1
    puts "Hopped to: #{@position.to_s}"
  end

  # Number of hops taken by the Kangaroo
  def number_of_hops
    @hops
  end

  # Has the Kangaroo reached home (North-east corner of grid)?
  def reached_home?(grid)
    @position.x == grid.dimension-1 && @position.y == grid.dimension-1
  end

  private
  # Update the position of Kangaroo in the given direction
  def update(direction)
    case direction
    when :North then Point.new(@position.x, @position.y + 1)
    when :South then Point.new(@position.x, @position.y - 1)
    when :East then Point.new(@position.x + 1, @position.y)
    when :West then Point.new(@position.x - 1, @position.y)
    else nil
    end
  end
end