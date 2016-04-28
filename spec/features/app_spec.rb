

RSpec.feature "Player management" do
  scenario "Users create two players" do
    sign_in_and_play
    expect(page).to have_content("Player One: Alex VS. Player Two: Lucy")
  end

  scenario "Players must see the hitpoints" do
    visit "/play"
    expect(page).to have_content("Hitpoints: 20")
  end

  scenario "A Player can attack other players" do
    sign_in_and_play
    click_button "Attack"
    expect(page).to have_content("Hitpoints: 18")
  end

  scenario "Expect players to switch turns after an attack" do
    sign_in_and_play
    click_button "Attack"
    expect.(page).to have_content("Attack Alex")
end
