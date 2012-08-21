class Human

  def initialize(name = self.class.name)
  	@name = name
  end
    
  def play(command)
    choice = CHOICES.find {|choice| choice == command}
    raise "Invalid command '#{command}', possible choices are: #{CHOICES.join(', ')}" unless choice
    return Result.new(@name, choice)
  end

end