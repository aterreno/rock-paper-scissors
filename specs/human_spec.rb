require_relative '../lib/init'

describe Human, "#play" do

  before(:each) do
    @human = Human.new
  end

  it "should understand rock command" do  	
  	@human.play("rock").value.should == "rock"
  end

  it "should understand scissors command" do  	
  	@human.play("scissors").value.should == "scissors"
  end

  it "should understand paper command" do  
  	@human.play("paper").value.should == "paper"
  end

  it "should raise an error when passing wrong command" do
    expect {@human.play("pappers")}.to raise_error(RuntimeError, "Invalid command 'pappers', possible choices are: #{CHOICES.join(', ')}")    
  end
end