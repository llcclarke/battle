require "player"

describe Player do
  subject(:drogo) { Player.new('Khal Drogo') }
  describe '#name' do
    it 'returns the name' do
      expect(drogo.name).to eq 'Khal Drogo'
    end
  end
end
