class RubyRacer

  attr_reader :players, :dice_roll, :length, :winner, :race_track

  def initialize(players, dice_roll, length = 40)
    @race_track = 0
    @players = players 
    @dice_roll = dice_roll 
    @length = length
    @left_track = Array.new(@length, ":")
    @right_track = Array.new(@length, ":")
    @left_track.unshift(players[1])
    @right_track.unshift(players[0])
  end

  def finished?
    return true if @race_track == @length
  end

  def winner
    return players[1] if @left_track.index(@players[1]) > @right_track.index(@players[0])
    return players[0] if @left_track.index(@players[0]) > @right_track.index(@players[1])
  end

  def advance_player(player)
      @race_track += 1
      @left_track.rotate!(-dice_roll.roll)
      @right_track.rotate!(-dice_roll.roll)
  end

  def board_visualization
      puts @left_track.join("")
      puts @right_track.join("")
  end
end


