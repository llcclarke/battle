feature 'Game Over' do
  context 'when Player 2 reaches 0 HP first' do
    before do
      sign_in_and_play
      9.times { attack }
      click_button 'Attack'
      expect(page).to have_content 'Tyrion Lannister loses!'
    end
  end
end
