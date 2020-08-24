class Command

  attr_reader :grid_size, :start, :movement, :y, :x, :face, :max_x, :max_y, :final_postion

  def initialize(grid_size, start, movement)
    @x = 0
    @y = 0
    @grid_size = grid_size
    @start = start
    @movement = movement
    @directions = ["N", "E", "S", "W"]
  end

  def mars
    @mars = Mars.new(grid_size)
    @max_x = @mars.max_x
    @max_y = @mars.max_y
  end

  def rover_cordinates
    @rover = Rover.new(@start)
    @rover.deploy
    @x = @rover.x
    @y = @rover.y
    @face = @rover.face
  end

  def process(commands)
    commands.each_char do |character|
      case character
      when 'L' then turn_left
      when 'R' then turn_right
      when 'M' then move_forward
      end
    end
    @final_postion = [@x, @y, @face].join(' ')
  end

  def move_forward
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
    fail 'Rover out in space' if limit?

    [@y, @x]
  end

  def turn_left(step = 1)
    face_to('+', step)
  end

  def turn_right(step = 1)
    face_to('+', step)
  end

  def face_to(operator, step)
    idx = @directions.index(@face).method(operator).call(step) % 4
    @face = @directions[idx]
  end

  def limit?
    @x > @max_x || @y > @max_y || @x.negative? || @y.negative?
  end

end
