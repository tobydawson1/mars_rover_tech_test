require 'rover'

describe 'rover' do

  before :each do 
    @rover = Rover.new("1 2 N")
  end

  it 'can access coordinates to rover one' do
    expect(@rover.rover).to eq(["1", "2", "N"])
  end

  it 'can create starting coordinates and face for rover one' do
    @rover.deploy
    expect(@rover.x).to eq(1)
    expect(@rover.y).to eq(2)
    expect(@rover.face).to eq("N")
  end 

end
