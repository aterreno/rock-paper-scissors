require_relative '../lib/init'

describe GameEngine, "#play" do

  before(:each) do
    @game_engine = GameEngine.new
  end

  it "should call a draw when both rock" do
    @game_engine.play(Result.new('Human','rock'), Result.new('Computer','rock')).should == "draw"
  end

  it "should call a draw when both paper" do
    @game_engine.play(Result.new('Human','paper'), Result.new('Computer','paper')).should == "draw"
  end

  it "should call a draw when both scissors" do
    @game_engine.play(Result.new('Human','scissors'), Result.new('Computer','scissors')).should == "draw"
  end
  
  it "should win computer for paper over human rock" do
    @game_engine.play(Result.new('Human','rock'), Result.new('Computer','paper')).should == "Computer won"
  end

  it "should win computer for scissors over human paper" do
    @game_engine.play(Result.new('Human','paper'), Result.new('Computer','scissors')).should == "Computer won"
  end

  it "should win computer for rock over human scissors" do
    @game_engine.play(Result.new('Human','scissors'), Result.new('Computer','rock')).should == "Computer won"    
  end

  it "should win human for rock over computer paper" do
    @game_engine.play(Result.new('Human','paper'), Result.new('Computer','rock')).should == "Human won"
  end

  it "should win human for scissors over computer paper" do
    @game_engine.play(Result.new('Human','scissors'), Result.new('Computer','paper')).should == "Human won"
  end

  it "should win human for rock over computer scissors" do
    @game_engine.play(Result.new('Human','rock'), Result.new('Computer','scissors')).should == "Human won" 
  end
end