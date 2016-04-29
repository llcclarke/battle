feature 'Game Over' do
  xscenario 'when Player 2 reaches 0 HP first' do
    allow(Kernel).to receive(:rand).and_return(30)
    sign_in_and_play
    8.times {attack}
    click_button 'Attack'
    expect(page).to have_content 'Cersei Lannister loses!'
  end
end
