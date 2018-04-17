require_relative 'die'
require_relative 'ruby_racer'
require_relative 'reset_screen'


players = [:🏎, :🚗]
die = Die.new

game = RubyRacer.new(players, die)

reset_screen
puts game.board_visualization
sleep(1)

# Play the game.
until game.finished?
  game.players.map do |player|
    game.advance_player(player)
  end

  reset_screen
 game.board_visualization
  sleep(0.2)
end

puts "THE WINNER IS #{game.winner}  !!!!, CONGRATS BUDDY!"
