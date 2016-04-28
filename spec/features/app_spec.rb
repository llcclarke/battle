

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
    click_button "Ok"
    expect(page).to have_content("Attack Alex")
  end

  scenario "Expect player 1 to attack first" do
    sign_in_and_play
    click_button "Attack"
    expect(page).to have_content("Alex attacked Lucy!")
  end
  scenario "Expect player to lose when out of hitpoints" do
    sign_in_and_play
    19.times do
      click_button "Attack"
      click_button "Ok"
    end
    expect(page).to have_content("GAME OVER! Lucy loses :(")
  end



end
