require 'mars_plateau'

describe Mars do

  before :each do
    @mars = Mars.new("5 5")
    @command = Command.new("5 5", "1 2 N", "LMLMLMLMM", "3 3 E", "MMRMMRMRRM")
  end

  it 'can be initiazed' do
    expect(@mars).to be_an_instance_of(Mars)
  end

  it 'holds the size of the playeau' do
    expect(@mars.max_x).to eq(5)
    expect(@mars.max_y).to eq(5)
  end

end
