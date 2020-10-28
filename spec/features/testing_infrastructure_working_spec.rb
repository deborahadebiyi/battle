

feature 'Testing infrastructure working' do
  scenario 'App runs and displays content' do
    visit('/') #similar to running subject = Class.new
    expect(page).to have_content 'Testing infrastructure working'
  end
end

feature 'Display player names' do
  scenario 'gets user input and exposes their names on screen' do
    visit('/')
    fill_in :player_name_one, with: 'Ed'
    fill_in :player_name_two, with: 'Eddie'
    click_button 'Submit'
    expect(page).to have_content 'Ed and Eddie'
  end
end
