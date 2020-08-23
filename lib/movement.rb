class Movement

  attr_reader :command, :movement

  def initialize(movement)
    @command = Command.new(nil, nil, movement)
    movement_accessability
  end

  def movement_accessability
    @movement = @command.movement.split("") 
  end
  
end
