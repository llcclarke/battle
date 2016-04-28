require 'game'

describe Game do

  let(:lucy) { double(:lucy) }
  let(:alex) { double(:alex) }
  subject(:game) { described_class.new(lucy, alex) }

  describe '#attack' do
    it 'should be able to attack other players' do
      expect(lucy).to receive(:receive_damage)
      game.attack(lucy)
    end
  end

end
