

RSpec.feature "Player management" do
  scenario "Users create two players" do
    visit "/"
    fill_in :player1, :with => "Daniel"
    fill_in :player2, :with => "Lucy"
    click_button "Start Game"
    expect(page).to have_content("Player One: Daniel VS. Player Two: Lucy")
  end

  scenario "Players must see the hitpoints" do
    visit "/play"
    expect(page).to have_content("Hitpoints: 20")
  end
end
