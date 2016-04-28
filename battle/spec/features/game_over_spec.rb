feature 'Game Over' do
  scenario 'when Player 2 reaches 0 HP first' do
    sign_in_and_play
    18.times { attack }
    click_button 'Attack'
    expect(page).to have_content 'Cersei Lannister loses!'
  end
end
