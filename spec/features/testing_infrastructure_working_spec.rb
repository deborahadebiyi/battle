

feature 'Testing infrastructure working' do
  scenario 'App runs and displays content' do
    visit('/') #similar to running subject = Class.new
    expect(page).to have_content 'Testing infrastructure working'
  end
end
