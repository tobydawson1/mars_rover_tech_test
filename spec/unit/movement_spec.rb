require 'movement'

describe Movement do

  before :each do
    @movement = Movement.new("LMLMLMLMM", "MMRMMRMRRM")
    @command = Command.new("5 5", "1 2 N", "LMLMLMLMM", "3 3 E", "MMRMMRMRRM")
  end

  it 'can create assessable movements' do
    @movement.movement_accessability
    expect(@movement.movement_one).to eq(["L", "M", "L", "M", "L", "M", "L", "M", "M"])
    expect(@movement.movement_two).to eq(["M", "M", "R", "M", "M", "R", "M", "R", "R", "M"])
  end
  
end
