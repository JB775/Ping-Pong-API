# Feature: Ajax page Test

feature 'Ajax page' do
  #   When a user visits the home page they see the below words
  scenario 'visit the Ajax page' do
    visit ajax_path
    expect(page).to have_content 'Ping Pong High Scores - Ajax Data Fetch'
  end

  scenario 'checking back link' do
    # Checking core page content
    visit ajax_path
    expect(page).to have_link 'Back'
  end

  scenario 'checking side menu' do
    # Making sure no menu appears
    visit ajax_path
    expect(page).to have_no_link 'menu-close'
  end

  scenario 'should not have ajax button' do
    # Checking that footer has expected content
    visit ajax_path
    expect(page).to have_no_button("ajax_click")
  end


end
