require 'player'

describe Player do
  subject(:hanna) { Player.new('Hanna') }

describe "#name" do
  it 'returns the name' do
    expect(hanna.name).to eq 'Hanna'
  end
end

end

# feature 'Return name' do
#   scenario 'tells you your username' do
#     sign_in_and_play
#     click_link 'Player'
#     expect(page).to have_content 'Hanna'
#   end
# end
