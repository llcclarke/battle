feature 'Names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: 'Jack'
    fill_in :player_2_name, with: 'Ruta'
    click_button 'Submit'
    expect(page).to have_content 'Jack vs. Ruta'
  end
end

feature 'Hit points' do
  scenario 'see hit points for second player' do
    visit('/')
    fill_in :player_1_name, with: 'Jack'
    fill_in :player_2_name, with: 'Ruta'
    click_button 'Submit'
    expect(page).to have_content 'Ruta: 100 HP'
  end
end
