feature 'adding bookmarks' do
  scenario 'user adds bookmark' do
    visit ('/bookmarks')
    click_button "Add bookmark"
    fill_in 'url', with: 'www.newwebsite.com'
    click_on 'Submit'
    expect(page).to have_content('www.newwebsite.com')
  end
end
