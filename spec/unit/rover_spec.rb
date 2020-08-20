require 'rover'

    describe Rover do
        it 'can pass inputs to rover' do
            @rover = Rover.new("5 5", "1 2 N", "LMLMLMLMM", "3 3 E", "MMRMMRMRRM")
            expect(@rover.command.grid_size).to eq("5 5")
        end
    end