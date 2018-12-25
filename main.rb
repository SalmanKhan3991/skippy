require_relative 'kangaroo'
require_relative 'die'
require_relative 'grid'
require_relative 'point'

# Initializing skippy
skippy = Kangaroo.new("Skippy".to_sym)

# Prompting user to provide the dimension
puts "Enter the dimension of the grid (>=1):"
dimension = gets.chomp

# Creating a new grid with the given dimension
grid = Grid.new(dimension.to_i)

# Creating a new die
die = Die.new

# Starting position
puts "Starting Position: #{skippy.position.to_s}"

# Simulation
until skippy.reached_home?(grid)
  direction = die.throw_die
  skippy.hop!(direction) if skippy.can_move?(direction, grid)
end

# Printing total hops
puts "Finished in #{skippy.number_of_hops} hops!"

# Printing die statistics
puts "\nDie statistics:"
die.total_throws
die.direction_count_percentage