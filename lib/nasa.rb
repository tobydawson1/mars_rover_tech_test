class Nasa

    attr_reader :movement_one, :movement_two, :rover_one, :rover_two, :face

  def initialize(grid_size, start_one, movement_one, start_two, movement_two)
    @rover_one = Command.new(grid_size, start_one, movement_one)
    @movement_one = movement_one
    @movement_two = movement_two
  end

  def excecution
    @rover_one.mars
    @rover_one.rover_cordinates
    @rover_one.process(@movement_one)
    @rover_one.final_postion
  end

end
