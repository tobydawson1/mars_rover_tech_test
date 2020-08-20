require 'mars_plateau'

describe Mars do

    before :each do
        @mars = Mars.new(3,3)
    end

    it 'can be initiazed' do
        expect(@mars).to be_an_instance_of(Mars)
    end

    it 'initializes with the size of the playeau' do
        @mars = Mars.new(3, 3)
        expect(@mars.upper_x_axis).to equal(3)
        expect(@mars.upper_y_axis).to equal(3)
    end

    
end