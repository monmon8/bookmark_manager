#Bookmarks

## *User Stories:*

1) As a user
 I would like to see a list of Bookmarks.

#Domain Model
Client      | Controller    |   Model           | View
        gets request-->
            |               |                   |
 Bookmarks  |      App      |       Bookmarks   |      erb bookmarks        
      <--response
            |               |     [Bookmarks ]  |       
            
    