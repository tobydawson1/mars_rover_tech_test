require 'command'

describe Command do

  before :each do
    @command = Command.new("5 5", "1 2 N", "LMLMLMLMM", "3 3 E", "MMRMMRMRRM")
  end

  it 'can input and store the commands' do
    expect(@command.grid_size).to eq("5 5")
    expect(@command.start_one).to eq("1 2 N")
    expect(@command.movement_one).to eq("LMLMLMLMM")
    expect(@command.start_two).to eq("3 3 E")
    expect(@command.movement_two).to eq("MMRMMRMRRM")
  end

  it 'can call the grid size' do
    @command.mars
    expect(@command.y).to eq(0..5)
    expect(@command.x).to eq(0..5)
  end

  it 'has usable rover data' do
    @command.rover_cordinates
    expect(@command.rover_one).to eq(["1", "2", "N"])
    expect(@command.rover_two).to eq(["3", "3", "E"])
  end

  it 'has usable movement data' do
    @command.rover_movements
    expect(@command.movement_one).to eq(["L", "M", "L", "M", "L", "M", "L", "M", "M"])
    expect(@command.movement_two).to eq(["M", "M", "R", "M", "M", "R", "M", "R", "R", "M"])
  end

end
