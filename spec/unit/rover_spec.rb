require 'rover'


    describe 'rover' do

        before :each do 
            @rover = Rover.new("5 5", "1 2 N", "LMLMLMLMM", "3 3 E", "MMRMMRMRRM")
        end

        it 'can pass inputs to rover' do
            expect(@rover.grid_size).to eq("5 5")
        end

        it 'holds all inputs' do
            expect(@rover.movement_one).to eq("LMLMLMLMM")
        end

        it 'can distinguish between rover one and two' do
            expect(@rover.rovers).to eq([["1"], ["2"], ["N"]])
        end
    end