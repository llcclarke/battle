def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: 'Tyrion Lannister'
  fill_in :player_2_name, with: 'Cersei Lannister'
  click_button 'Submit'
end

def attack
  click_button 'Attack'
  click_button 'OK'
end

def single_sign_in
  visit('/')
  fill_in :player_1_name, with: 'Tyrion Lannister'
  click_button '1 Player'
end
