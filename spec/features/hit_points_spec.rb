RSpec.feature "Hit points" do
  scenario "Players must see the hitpoints" do
     sign_in_and_play
    expect(page).to have_content("Hitpoints: 20")
  end

  scenario "A Player1 can attack player2" do
    sign_in_and_play
    click_button "Attack"
    expect(page).to have_content("Alex attacked Lucy!")
  end
  scenario "Player 1's attack reduces Player 2's HP by 2" do
    sign_in_and_play
    click_button "Attack"
    expect(page).to have_content("Alex attacked Lucy!")
  end

 scenario "A Player can attack other players" do
    sign_in_and_play
    click_button "Attack"
    click_button "Ok"
    click_button "Attack"
    expect(page).to have_content("Lucy attacked Alex!")
  end


end