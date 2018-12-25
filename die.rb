class Die

  def initialize
    # Sides of a die
    @sides = [:North, :South, :East, :West]

    # Hash to keep the direction counters
    @direction_counter = {}

    # Initializing counters of all directions to 0
    @sides.each do |side|
      @direction_counter[side] = 0
    end

    # Initializing counter to store the number of times a die is thrown
    @counter = 0

    # Create random object once and use all the time
    @random = Random.new
  end

  # Die throw simulation
  def throw_die
    @result = @random.rand(0...4)
    side = @sides[@result]
    @direction_counter[side] += 1
    @counter += 1
    side
  end

  # Prints total number of throws of die
  def total_throws
    puts "Total throws:: #{@counter}"
  end

  # Prints counter of movements in each direction
  def direction_counts
    @direction_counter.each do |direction, count|
      puts "#{direction.to_s} : #{count}"
    end
  end

  # Prints percentage of movements in each direction
  def direction_count_percentage
    @direction_counter.each do |direction, count|
      value = ((count * 100) / @counter.to_f).round(1)
      print "#{direction}: #{value}% "
    end
  end
end