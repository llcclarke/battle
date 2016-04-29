feature 'Names' do
  scenario 'submitting names' do
    sign_in_and_play
    expect(page).to have_content 'Tyrion Lannister vs. Cersei Lannister'
  end

  scenario 'has computer opponent possibilities' do
    visit('/')
    expect(page).to have_content 'Or... play against CPU'
  end
end
