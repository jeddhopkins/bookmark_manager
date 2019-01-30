feature 'adding bookmarks' do
  scenario 'user adds bookmark with a title and url' do
    visit ('/bookmarks')
    click_button "Add bookmark"
    fill_in 'url', with: 'www.newwebsite.com'
    fill_in 'title', with: 'new world website'
    click_on 'Submit'
    expect(page).to have_content("new world website")
  end
end
