#!/usr/bin/env ruby

require_relative 'lib/init'

@computer_a = Computer.new("ENIAC")
@computer_b = Computer.new("Z3")
@game_engine = GameEngine.new

10.times do
  puts @game_engine.play(@computer_a.play, @computer_b.play)  
end