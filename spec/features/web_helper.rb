def add_bookmark
  visit ('/bookmarks')
  click_button "Add bookmark"
  fill_in 'url', with: 'www.newwebsite.com'
  fill_in 'title', with: 'new world website'
  click_on 'Submit'
end
