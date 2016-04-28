class Player

attr_reader :hitpoints

  DEFAULT_STARTING_HITPOINTS = 20
  DEFAULT_ATTACK = 2

  def initialize(player)
    @player = player
    @hitpoints = DEFAULT_STARTING_HITPOINTS
  end

  def name
    @player
  end

  def hitpoints
    @hitpoints
  end

  def receive_damage
    @hitpoints -= random_damage
  end

  def dead?
    @hitpoints <= 0
  end

  private
  def random_damage
    rand(5)
  end

end
