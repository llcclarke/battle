feature 'Names' do
  scenario 'submitting names' do
    sign_in_and_play
    expect(page).to have_content 'Khal Drogo vs. Daenerys Targaryen'
  end
end
