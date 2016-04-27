feature 'Hit points' do
  scenario 'see hit points for first player' do
    sign_in_and_play
    expect(page).to have_content 'Khal Drogo: 100 HP'
  end

  scenario 'see hit points for second player' do
    sign_in_and_play
    expect(page).to have_content 'Daenerys Targaryen: 100 HP'
  end
end
