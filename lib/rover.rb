class Rover

    attr_reader :help, :command, :grid_size, :movement_one, :start_two, :movement_two, :cordinates_one

    def initialize(grid_size, start_one, movement_one, start_two, movement_two)
        @command = Command.new(grid_size, start_one, movement_one, start_two, movement_two)
    end

    def rovers
        @command.start_one 
    end

end