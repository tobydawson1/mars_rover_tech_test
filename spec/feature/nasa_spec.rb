require 'nasa'

describe Nasa do

  before :each do
    @nasa = Nasa.new("5 5", "1 2 N", "LMLMLMLMM", "3 3 E", "MMRMMRMRRM")
  end

  it 'moves rover one' do
    expect(@nasa.mission_one).to eq("1 3 N")
    expect(@nasa.mission_two).to eq("5 1 E")
  end
  
end
