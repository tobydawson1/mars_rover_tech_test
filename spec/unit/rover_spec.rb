require 'rover'

describe 'rover' do

  before :each do 
    @rover = Rover.new("1 2 N", "3 3 E")
  end

  it 'can access coordinates to rover one' do
    expect(@rover.rover_one).to eq(["1", "2", "N"])
  end

  it 'can access coordinates to rover two' do
    expect(@rover.rover_two).to eq(["3", "3", "E"])
  end

  it 'can create starting cordinates and face for rover one' do
    @rover.deploy_one
    expect(@rover.x).to eq(1)
    expect(@rover.y).to eq(2)
    expect(@rover.face).to eq("N")
  end

  it 'can create starting cordinates and face for rover two' do
    @rover.deploy_two
    expect(@rover.x).to eq(3)
    expect(@rover.y).to eq(3)
    expect(@rover.face).to eq("E")
  end

  it 'will deploy rovers one at a time' do
    @rover.deploy_one
    expect(@rover.x).to eq(1)
    expect(@rover.y).to eq(2)
    expect(@rover.face).to eq("N")
    @rover.deploy_two
    expect(@rover.x).to eq(3)
    expect(@rover.y).to eq(3)
    expect(@rover.face).to eq("E")
  end
end
