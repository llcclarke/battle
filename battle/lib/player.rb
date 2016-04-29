
class Player
  DEFAULT_HP = 100
  attr_reader :name, :hp

  def initialize(name, hp = DEFAULT_HP)
    @name = name
    @hp = hp
    @name = "Cersei Lannister" if name == ""
  end

  def receive_damage
    @hp -= rand_damage
  end

  private

  def rand_damage
    rand(10...30)
  end
end
