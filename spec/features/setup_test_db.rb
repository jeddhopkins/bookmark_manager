require 'pg'
require 'bookmark'

def setup_db
  connection = PG.connect( dbname: 'bookmark_manager_test' )
  connection.exec( "TRUNCATE TABLE bookmarks" )
end

def add_to_db
  Bookmark.add("makers academy", "http://www.makersacademy.com")
  Bookmark.add("google", "http://www.google.com")
  Bookmark.add("destroy", "http://www.destroyallsoftware.com")
end
