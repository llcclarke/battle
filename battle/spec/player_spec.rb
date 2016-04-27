require "player"

describe Player do
  subject(:tyrion) { Player.new('Tyrion Lannister') }

  describe '#name' do
    it 'returns the name' do
      expect(tyrion.name).to eq 'Tyrion Lannister'
    end

    it 'starts with 100 HP' do
      expect(tyrion.hp).to eq 100
    end
  end


end
