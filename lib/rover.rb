class Rover

    attr_reader :command, :grid_size, :start_one, :movement_one, :start_two, :movement_two

    def initialize(grid_size, start_one, movement_one, start_two, movement_two) 
        @command = Command.new(grid_size, start_one, movement_one, start_two, movement_two)
    end


end