def sign_in_and_play
  visit('/')
  fill_in :player_name_one, with: 'Ed'
  fill_in :player_name_two, with: 'Eddie'
  click_button 'Submit'
end
