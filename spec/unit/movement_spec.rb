require 'movement'

describe Movement do

  before :each do
    @movement = Movement.new("LMLMLMLMM")
    @command = Command.new("5 5", "1 2 N", "LMLMLMLMM")
  end

  it 'can create assessable movements' do
    @movement.movement_accessability
    expect(@movement.movement).to eq(["L", "M", "L", "M", "L", "M", "L", "M", "M"])
  end
  
end
