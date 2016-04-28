require_relative 'player'

class Game

  attr_reader :player1, :player2, :current_player, :alt_player

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @current_player = @player2
    @alt_player = @player1
  end



  def attack(player)
    player.receive_damage
  end

  def loser
    @loser = [player1, player2].select{|player| player.dead? == true}.first
  end

  def switch_turns
    @alt_player = @current_player
    @current_player = @current_player == @player2 ? @player1 : @player2
  end
end
