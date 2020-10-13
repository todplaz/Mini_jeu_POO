require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

player1 = Player.new("José")
player1.gets_damage(4)
player2 = Player.new("Angèle")

puts "A ma droite #{player2.name}"
puts "A ma gauche #{player1.name}"
binding.pry
