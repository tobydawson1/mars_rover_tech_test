class Rover

  attr_reader :command, :start_one, :start_two, :rover_one, :rover_two, :rover_three, :x, :y, :face

  def initialize(start_one, start_two)
    @command = Command.new(nil, start_one, nil, start_two, nil)
    rover_location
  end

  def rover_location
    @rover_one = @command.start_one.split(" ") 
    @rover_two = @command.start_two.split(" ") 
  end

  def deploy_one
    @x = @rover_one[0].to_i 
    @y = @rover_one[1].to_i
    @face = @rover_one[2]
  end

  def deploy_two
    @x = @rover_two[0].to_i 
    @y = @rover_two[1].to_i
    @face = @rover_two[2]
  end

end
