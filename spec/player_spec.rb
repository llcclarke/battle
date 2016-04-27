require 'player'

describe Player do

  subject(:lucy) { Player.new('lucy') }

  it "knows it's name" do
    our_player = Player.new('player')
    expect(our_player.name).to eq 'player'

  end
end
