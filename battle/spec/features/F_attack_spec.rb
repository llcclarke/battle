feature 'Attack player' do
  scenario 'Attacks player 2 and confirms' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content "Tyrion Lannister attacked Cersei Lannister"
  end

  scenario 'Attacks player 1 and confirms' do
    sign_in_and_play
    attack
    click_button('Attack')
    expect(page).to have_content "Cersei Lannister attacked Tyrion Lannister"
  end

  scenario 'Player 2 HP reduces by 10' do
    sign_in_and_play
    attack
    expect(page).not_to have_content "Cersei Lannister: 100 HP"
    expect(page).to have_content "Cersei Lannister: 90 HP"
  end

  scenario 'Player 1 HP reduces by 10' do
    sign_in_and_play
    2.times { attack }
    expect(page).not_to have_content "Tyrion Lannister: 100 HP"
    expect(page).to have_content "Tyrion Lannister: 90 HP"
  end
end
