class InteractiveRunner
  def initialize(player_a, player_b, game_engine)
    @player_a = player_a
    @player_b = player_b
    @game_engine = game_engine
  end

  def run
    process gets.strip.downcase
  end

  def process(input)    
    if input == 'x' 
      puts "Thanks for playing, bye now!"
      return quit
    end
    begin
      puts @game_engine.play(@player_a.play(input), @player_b.play)  
    rescue RuntimeError => e
       puts e.message       
    end
    run
  end

  def quit
    exit
  end

end