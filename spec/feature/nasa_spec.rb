require 'nasa'

describe Nasa do

  before :each do
    @nasa = Nasa.new("5 5", "1 2 N", "LMLMLMLMM", "3 3 E", "MMRMMRMRRM")
  end

  it 'gives the correct final positions of both rovers' do
    expect(@nasa.mission_one).to eq("1 3 N")
    expect(@nasa.mission_two).to eq("5 1 E")
  end
  
end

describe Nasa do 

  before :each do
    @nasa = Nasa.new("10 10", "5 2 W", "MMLMLMMMLM", "7 7 N", "MRMMLMMRM")
  end

  it 'gives another set of correct rover positions' do
    expect(@nasa.mission_one).to eq("6 2 N")
    expect(@nasa.mission_two).to eq("10 10 E")
  end

end
