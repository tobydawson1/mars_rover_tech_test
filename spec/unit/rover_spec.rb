require 'rover'


    describe 'rover' do

        before :each do 
            @rover = Rover.new("1 2 N", "3 3 E")
        end


        it 'can access coordinates to rover one' do
            @rover.rover_location
            expect(@rover.rover_one).to eq(["1", "2", "N"])
        end

        it 'can access coordinates to rover two' do
            @rover.rover_location
            expect(@rover.rover_two).to eq(["3", "3", "E"])
        end
    end