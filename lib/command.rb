class Command

  attr_reader :grid_size, :start_one, :movement_one, :start_two, :movement_two, :y, :x, :rover_one, :rover_two

  def initialize(grid_size, start_one, movement_one, start_two, movement_two)
    @grid_size = grid_size
    @start_one = start_one
    @movement_one = movement_one
    @start_two = start_two
    @movement_two = movement_two
  end

  def mars
    @mars = Mars.new(grid_size)
    @y = @mars.y
    @x = @mars.x
  end

  def rover_cordinates
    @rover = Rover.new(@start_one, @start_two)
    @rover_one = @rover.rover_one
    @rover_two = @rover.rover_two
  end

  def rover_movements
    @movement = Movement.new(@movement_one, @movement_two)
    @movement_one = @movement.movement_one
    @movement_two = @movement.movement_two
  end

  def face
    case @face
    when 'N'
      @y += 1
    when 'S'
      @y -= 1
    when 'E'
      @x += 1
    when 'W'
      @x -= 1
    end
  end

end
