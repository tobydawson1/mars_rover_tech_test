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
    @mars.grid
    expect(@mars.upper_x_axis).to eq("5")
    expect(@mars.upper_y_axis).to eq("5")
  end

  it 'can assign grid size to variables' do
    @mars.grid
    @mars.plateau
    expect(@mars.x).to eq(0..5)
    expect(@mars.y).to eq(0..5)
  end

end
