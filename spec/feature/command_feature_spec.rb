require 'command'

describe Command do

  before :each do
    @command = Command.new("5 5", "1 2 N", "LMLMLMLMM")
  end  

  it 'can receive data, convert it, operate rover and return correct final position' do
    @command.mars
    @command.rover_coordinates
    @command.process("LMLMLMLMM")
    expect(@command.face).to eq("N")
    expect(@command.x).to eq(1)
    expect(@command.y).to eq(3)
    expect(@command.final_postion).to eq("1 3 N")
  end

  it 'will move left' do
    @command.mars
    @command.rover_coordinates
    @command.process("L")
    expect(@command.face).to eq("W")
  end

  it 'will move right' do
    @command.mars
    @command.rover_coordinates
    @command.process("R")
    expect(@command.face).to eq("E")
  end

  it 'will move forward' do
    @command.mars
    @command.rover_coordinates
    @command.process("M")
    expect(@command.y).to eq(3)
  end
 
end

describe Command do

  before :each do
    @command = Command.new("5 5", "3 3 E", "MMRMMRMRRM")
  end

  it 'it can return the correct final destination for the second rover' do
    @command.mars
    @command.rover_coordinates
    @command.process("MMRMMRMRRM")
    expect(@command.face).to eq("E")
    expect(@command.x).to eq(5)
    expect(@command.y).to eq(1)
    expect(@command.final_postion).to eq("5 1 E")
  end
  
end
