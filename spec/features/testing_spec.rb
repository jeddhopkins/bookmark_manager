
feature 'testing' do
let(:bookmarks) {Bookmark.all}

 scenario 'views the homepage' do
   visit '/'
   expect(page).to have_content("Bookmark Manager")
 end

 scenario 'option to view the list of bookmarks' do
   add_to_db
   visit '/'
   click_button('View Bookmarks')
   expect(page).to have_content("http://www.makersacademy.com")
   expect(page).to have_content("http://www.google.com")
   expect(page).to have_content("http://www.destroyallsoftware.com")
 end
end
