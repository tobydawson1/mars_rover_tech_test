class Rover

    attr_reader  :command, :start_one, :start_two, :rover_one, :rover_two

    def initialize( start_one, start_two)
        @command = Command.new(grid_size = 0, start_one, movement_one = 0, start_two, movement_two = 0)
    end

    def rover_location
        @rover_one = @command.start_one.split(" ") 
        @rover_two = @command.start_two.split(" ") 
    end

end