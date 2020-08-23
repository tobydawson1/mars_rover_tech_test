require 'nasa'

describe Nasa do

  before :each do
    @nasa = Nasa.new("5 5", "1 2 N", "LMLMLMLMM", "3 3 E", "MMRMMRMRRM")
  end

  it 'moves rover one' do
    expect(@nasa.excecution).to eq("1 3 N")
  end
end