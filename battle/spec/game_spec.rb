require 'game'

describe Game do
  let(:cersei) {double :cersei}
  let(:tyrion) {double :tryrion}

  describe 'attack' do

    it 'damages the player' do
      expect(subject).to receive(:attack)
      subject.attack(cersei)
    end
  end
end
