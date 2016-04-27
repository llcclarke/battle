

RSpec.feature "Player management" do
  scenario "Users create two players" do
    visit "/"
    fill_in :player1, :with => "Daniel"
    fill_in :player2, :with => "Lucy"
    click_button "Start Game"
    expect(page).to have_content("Hello Daniel and Lucy!")
  end
end
