#!/usr/bin/env ruby

require_relative 'lib/init'

computer = Computer.new
human = Human.new
game_engine = GameEngine.new

puts "Enter your choice: possible ones are: #{CHOICES.join(', ')}"
puts "x to quit playing"

InteractiveRunner.new(human, computer, game_engine).run