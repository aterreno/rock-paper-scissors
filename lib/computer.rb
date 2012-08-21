class Computer

  def initialize(name = self.class.name)
  	@name = name
  end

  def play
    Result.new(@name, CHOICES.sample)
  end 
  
end