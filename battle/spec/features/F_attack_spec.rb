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
end
