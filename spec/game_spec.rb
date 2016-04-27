require 'game'

describe Game do

  let(:lucy) { Player.new('lucy') }
  let(:daniel) { Player.new('daniel') }
  subject(:game) { described_class.new(lucy, daniel) }

  it 'should have two players' do
    game.should_not be_nil
  end
end
