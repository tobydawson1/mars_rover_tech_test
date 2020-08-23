class Nasa

    attr_reader :movement_one, :movement_two, :rover_one, :rover_two, :face

  def initialize(grid_size, start_one, movement_one, start_two, movement_two)
    @rover_one = Command.new(grid_size, start_one, movement_one)
    @rover_two = Command.new(grid_size, start_two, movement_two)
    @movement_one = movement_one
    @movement_two = movement_two
  end

  def mission_one
    @rover_one.mars
    @rover_one.rover_cordinates
    @rover_one.process(@movement_one)
    @rover_one.final_postion
  end

  def mission_two
    @rover_two.mars
    @rover_two.rover_cordinates
    @rover_two.process(@movement_two)
    @rover_two.final_postion
  end

end
