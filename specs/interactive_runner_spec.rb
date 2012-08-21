require_relative '../lib/init'

describe InteractiveRunner, "#run" do

  before(:each) do
    @human = double('human')
    @computer = double('computer')
    @gameengine = double('gameengine')
    @runner = InteractiveRunner.new(@human, @computer, @gameengine)
  end

  it "should not call play on the game engine when user input is x" do
    @gameengine.should_not_receive(:play)
    InteractiveRunner.any_instance.stub(:quit)

    @runner.process('x')
  end

  it "should call play on the game engine with the right params" do
    @human.should_receive(:play).and_return(Result.new('Human', 'rock'))
    @computer.should_receive(:play).and_return(Result.new('Computer', 'scissors'))
    InteractiveRunner.any_instance.stub(:run)
    @gameengine.should_receive(:play).with(Result.new('Human', 'rock'), Result.new('Computer', 'scissors'))

    @runner.process('rock')
  end

end