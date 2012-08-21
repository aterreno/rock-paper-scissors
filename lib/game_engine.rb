class GameEngine
    
  def initialize(args = {})
    @beats = { 'rock' => 'paper', 'paper' => 'scissors', 'scissors' => 'rock'}
  end

  def play(result_a, result_b)
    return "draw" if result_a.value == result_b.value
    return "#{result_a.player} won" if  result_a.value == @beats[result_b.value]
    return "#{result_b.player} won"
  end
end