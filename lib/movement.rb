class Movement

    attr_reader  :command, :movement_one, :movement_two

    def initialize(movement_one, movement_two)
        @command = Command.new(grid_size = nil, start_one = nil, movement_one, start_two = nil, movement_two)
    end

    def movement_accessability
        @movement_one = @command.movement_one.split("") 
        @movement_two = @command.movement_two.split("") 
    end

end