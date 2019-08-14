feature 'creating a bookmark'do
  scenario 'add a new bookmark' do
    visit('/bookmarks/new')
    fill_in("url", with:'http://testbookmark.com')
    click_button('Submit') 
    expect(page).to have_content('http://testbookmark.com')
  end 
end 