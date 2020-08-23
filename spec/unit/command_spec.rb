require 'command'

describe Command do

  before :each do
    @command = Command.new("5 5", "1 2 N", "LMLMLMLMM")
  end

  it 'can input and store the commands' do
    expect(@command.grid_size).to eq("5 5")
    expect(@command.start).to eq("1 2 N")
    expect(@command.movement).to eq("LMLMLMLMM")
  end

  it 'can call the grid size' do
    @command.mars
    expect(@command.max_y).to eq(5)
    expect(@command.max_x).to eq(5)
  end

  it 'has usable rover data' do
    @command.rover_cordinates
    expect(@command.x).to eq(1)
    expect(@command.y).to eq(2)
    expect(@command.face).to eq("N")
  end

end
