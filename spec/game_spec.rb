require 'game'

describe Game do

  let(:lucy) { double(:lucy) }
  let(:alex) { double(:alex, receive_damage: true) }
  subject(:game) { described_class.new(lucy, alex) }

  describe '#attack' do
    it 'should be able to attack other players' do
      expect(alex).to receive(:receive_damage)
      game.attack(alex)
    end
  end
  describe '#player1' do
    it 'retrieves the first player' do
      expect(game.player1).to eq lucy
    end
  end
  describe '#player2' do
    it 'retrieves the second player' do
      expect(game.player2).to eq alex
    end
  end


end
