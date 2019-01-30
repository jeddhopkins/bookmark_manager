# feature 'updating bookmark titles & urls' do
#   scenario 'Updates the bookmark title' do
#     add_bookmark
#     click_button 'Update bookmark'
#     fill_in 'Old title', with: 'new world website'
#     fill_in 'New title', with: 'elephant actions'
#     click_button 'Submit'
#     expect(page).to_not have_content "new world website"
#     expect(page).to have_content "elephant actions"
#   end
# end
