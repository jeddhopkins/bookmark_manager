require 'pg'
require 'bookmark'

def setup_db
  connection = PG.connect( dbname: 'bookmark_manager_test' )
  connection.exec( "DROP TABLE bookmarks" )
  connection.exec( "CREATE TABLE bookmarks (id SERIAL PRIMARY KEY, url VARCHAR(60), title VARCHAR(30))")
end

def add_to_db
  Bookmark.add("makers academy", "http://www.makersacademy.com")
  Bookmark.add("google", "http://www.google.com")
  Bookmark.add("destroy", "http://www.destroyallsoftware.com")
end
