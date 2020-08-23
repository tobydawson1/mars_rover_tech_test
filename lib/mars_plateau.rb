class Mars

  attr_reader :max_x, :max_y, :grid_size, :start_one, :movement_one, :start_two, :movement_two

  def initialize(grid_size)
    @command = Command.new(grid_size, start_one, movement_one, start_two, movement_two)
    @grid_size = grid_size
    grid
  end

  def grid
    @grid_size = @grid_size.split(" ")
    @max_x = @grid_size[0].to_i
    @max_y = @grid_size[1].to_i
    @min_x = 0
    @min_y = 0
  end

  
end
