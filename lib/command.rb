class Command

  attr_reader :grid_size, :start_one, :movement_one, :start_two, :movement_two, :y, :x, :rover_one, :rover_two, :max_x, :max_y

  def initialize(grid_size, start_one, movement_one, start_two, movement_two)
    @grid_size = grid_size
    @start_one = start_one
    @movement_one = movement_one
    @start_two = start_two
    @movement_two = movement_two
  end

  def mars
    @mars = Mars.new(grid_size)
    @max_x = @mars.max_x
    @max_y = @mars.max_y
  end

  def rover_cordinates
    @rover = Rover.new(@start_one, @start_two)
    @rover_one = @rover.rover_one
    @rover_two = @rover.rover_two
  end

  def process(commands)
    commands.each_char do |character|
      case character
      when 'L' then turn_left
      when 'R' then turn_right
      when 'M' then move_forward
      end
    end
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
