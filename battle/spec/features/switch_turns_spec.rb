feature 'switching turns' do

  scenario 'see the current turn at the start of the game' do
    sign_in_and_play
    expect(page).to have_content "Tyrion Lannister's turn"
  end

  scenario 'after player 1 attacks' do
    sign_in_and_play
    attack
    expect(page).to_not have_content "Tyrion Lannister's turn"
    expect(page).to have_content "Cersei Lannister's turn"
  end
end
