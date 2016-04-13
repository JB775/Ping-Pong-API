# Feature: Home page Test

feature 'Home page' do
  #   When a user visits the home page they see the below words
  scenario 'visit the home page' do
    visit root_path
    expect(page).to have_content 'Ping Pong Scoreboard'
  end

  scenario 'checking top link' do
  	# Checking core page content
    visit root_path
    expect(page).to have_content 'View Scores'
  end

  scenario 'checking side menu' do
  	# Checking core page content
    visit root_path
    expect(page).to have_link 'menu-close'
  end

  scenario 'scroll to bottom' do
  	# Checking that footer has expected content
    visit root_path
    expect(page).to have_content 'John Bergandino | 2016'
  end

  scenario 'should not have save button' do
  	# Checking that footer has expected content
    visit root_path
    expect(page).to have_no_button("Back")
  end

  scenario 'clicking link works' do
  	# Making sure link at bottom works
    visit root_path
    click_link('ajax_click')
    expect(page).to have_content 'Ping Pong High Scores - Ajax Data Fetch'
  end

end
