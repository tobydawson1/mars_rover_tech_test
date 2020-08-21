class Command

    attr_reader :grid_size, :start_one, :movement_one, :start_two, :movement_two

    def initialize(grid_size, start_one, movement_one, start_two, movement_two)
        @grid_size = grid_size
        @start_one = start_one
        @movement_one = movement_one
        @start_two = start_two
        @movement_two = movement_two
    end


end