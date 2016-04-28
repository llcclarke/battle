class Game
  attr_reader :current_player

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @current_player = player_1
  end

  def player_1
    players.first
  end

  def player_2
    players.last
  end

  def switch_turns
    @current_player = opponent_of(current_player)
  end

  def opponent_of(player)
    players_who_are_not(player).first
  end

  def game_over?
    losing_players.any?
  end

  def loser
    losing_players.first
  end

  private
  attr_reader :players

  def losing_players
    players.select { |player| player.hp <= 0 }
  end

  def players_who_are_not(current_player)
    players.select { |player| player != current_player }
  end
end
