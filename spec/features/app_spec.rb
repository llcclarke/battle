

RSpec.feature "Player management" do
  scenario "Users create two players" do
  sign_in_and_play
    expect(page).to have_content("Player One: Daniel VS. Player Two: Lucy")
  end

  scenario "Players must see the hitpoints" do
    visit "/play"
    expect(page).to have_content("Hitpoints: 20")
  end
end
