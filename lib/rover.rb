class Rover

  attr_reader :command, :start, :rover, :x, :y, :face

  def initialize(start)
    @command = Command.new(nil, start, nil)
    rover_location
  end

  def rover_location
    @rover = @command.start.split(" ") 

  end

  def deploy
    @x = @rover[0].to_i 
    @y = @rover[1].to_i
    @face = @rover[2]
  end

end
