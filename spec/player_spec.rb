require 'player'


describe Player do
  it "knows it's name" do
    our_player = Player.new('player')
    expect(our_player.name).to eq 'player'

  end
end