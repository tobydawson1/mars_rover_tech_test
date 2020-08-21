class Mars

  attr_reader :upper_x_axis, :upper_y_axis, :grid_size, :start_one, :movement_one, :start_two, :movement_two, :y, :x

  def initialize(grid_size)
    @command = Command.new(grid_size, start_one, movement_one, start_two, movement_two)
    @grid_size = grid_size
  end

  def grid
    @grid_size = @grid_size.split(" ")
    @upper_x_axis = @grid_size[0]
    @upper_y_axis = @grid_size[1]
  end

  def plateau 
    @x = @upper_x_axis.to_i
    @y = @upper_y_axis.to_i
    @x = (0..@x) 
    @y = (0..@y)
  end

end
