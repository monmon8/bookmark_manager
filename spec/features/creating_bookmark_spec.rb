require 'spec_helper'

feature 'creating a bookmark' do
  scenario 'add a new bookmark' do
    visit('/bookmarks/new')
    fill_in("url", with:'http://www.testbookmark.com')
    fill_in("title", with:'TestBookmark')
    click_button('Submit') 
    expect(page).to have_link('TestBookmark', href:'http://www.testbookmark.com')
  end 
end 