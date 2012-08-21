require_relative '../lib/init'

describe Computer, "#play" do

  before(:each) do
    @computer = Computer.new
  end

  it "should play according to the rules" do
    %w[rock paper scissors].should include @computer.play.value
  end

  it "should play and be identified as Computer" do 
  	@computer.play.player.should == 'Computer'
  end
end