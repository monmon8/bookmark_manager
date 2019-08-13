feature 'viewing bookmarks' do
  scenario 'visiting the index page' do
    visit ('/')
    expect(page).to have_content("Book Manager")
  end 
end 

feature 'viewing bookmarks' do
  scenario 'A user can see Bookmarks' do
    visit ('/bookmarks')
    expect(page).to have_content "http://www.makersacademy.com"
    expect(page).to have_content "http://www.destroyallsoftware.com"
    expect(page).to have_content "http://www.google.com"
  end 
end 