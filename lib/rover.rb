class Rover

  attr_reader :command, :start_one, :start_two, :rover_one, :rover_two

  def initialize(start_one, start_two)
    @command = Command.new(nil, start_one, nil, start_two, nil)
    rover_location
  end

  def rover_location
    @rover_one = @command.start_one.split(" ") 
    @rover_two = @command.start_two.split(" ") 
  end

end
