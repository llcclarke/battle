feature 'Attack player' do
  scenario 'Attacks player and confirms' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content "Khal Drogo attacked Daenerys Targaryen"
  end
end
