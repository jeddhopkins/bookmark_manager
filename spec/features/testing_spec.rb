feature 'testing' do
let(:bookmarks) {Bookmark.all}

 scenario 'views the homepage' do
   visit '/'
   expect(page).to have_content("Bookmark Manager")
 end

 scenario 'option to view the list of bookmarks' do
   visit '/'
   click_button('View Bookmarks')
   expect(page).to have_content(bookmarks[0])
 end

end