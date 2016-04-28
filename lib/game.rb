require_relative 'player'

class Game

  attr_reader :player1, :player2, :current_player, :alt_player

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @current_player = @player1
    @alt_player = @player2
  end



  def attack(player)
    player.receive_damage
    switch_turns
  end

  private
  def switch_turns
    @alt_player = @current_player
    @current_player = @current_player == @player1 ? @player2 : @player1
  end
end
