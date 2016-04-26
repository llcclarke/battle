

RSpec.feature "Entering players" do
  scenario "Two players enter their names" do
    visit "/"
    fill_in "Player1", :with => "Michael"
    fill_in "Player2", :with => "Lucy"
    click_button "Submit"

    expect(page).to have_text("Welcome Michael and Lucy.")
  end
end