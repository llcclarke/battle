class Game
  attr_reader :current_player

  def initialize(player1, player2)
    @players = [player1, player2]
    @current_player = player1
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def attack(player)
    player.receive_damage
  end

  def switch_turns
    @current_player = opponent_of(current_player)
  end

  def opponent_of(current_player)
    @players.select { |player| player != current_player }.first
  end

  private
  attr_reader :players

end
