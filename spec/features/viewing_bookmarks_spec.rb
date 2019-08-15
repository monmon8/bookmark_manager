require 'spec_helper'

feature 'viewing bookmarks' do
  scenario 'visiting the index page' do
    visit ('/')
    expect(page).to have_content("Book Manager")
  end 
end 

feature 'viewing bookmarks' do
  scenario 'A user can see Bookmarks' do
    # connection = PG.connect(dbname: 'bookmark_manager_test')
    Bookmark.create(url: "http://www.makersacademy.com", title: 'Makers Academy')
    Bookmark.create(url: "http://www.destroyallsoftware.com", title: 'Destroy All Software')
    Bookmark.create(url: "http://www.google.com", title: 'Google')
    
    
    # connection.exec("INSERT INTO bookmarks VALUES(17, 'http://www.makersacademy.com');")
    # connection.exec("INSERT INTO bookmarks VALUES(26, 'http://www.destroyallsoftware.com');")
    # connection.exec("INSERT INTO bookmarks VALUES(37, 'http://www.google.com');")
    

    visit('/bookmarks')
    expect(page).to have_link('Makers Academy', href: 'http://www.makersacademy.com')
    expect(page).to have_link('Destroy All Software',  href: 'http://www.destroyallsoftware.com')
    expect(page).to have_link('Google', href: 'http://www.google.com')
    end 
end 