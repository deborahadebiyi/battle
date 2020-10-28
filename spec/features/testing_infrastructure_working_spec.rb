

feature 'Testing infrastructure working' do
  scenario 'App runs and displays content' do
    visit('/') #similar to running subject = Class.new
    expect(page).to have_content 'Testing infrastructure working'
  end
end

feature 'Display player names' do
  scenario 'gets user input and exposes their names on screen' do
    sign_in_and_play
    expect(page).to have_content 'Ed and Eddie'
  end
end

feature 'Display player 2hit points' do
  scenario 'show player two specific number of hit points' do
    sign_in_and_play
    expect(page).to have_content "Eddie has 45000 HP"
  end
end

feature 'Display attack confirmation' do
  scenario 'show confirmation of attack' do
    sign_in_and_play
    click_button 'Attack player two!'
    expect(page).to have_content 'Eddie was attacked!'
  end
end
