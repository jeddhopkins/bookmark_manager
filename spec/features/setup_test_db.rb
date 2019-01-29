require 'pg'

def setup_db
  connection = PG.connect( dbname: 'bookmark_manager_test' )
  connection.exec( "TRUNCATE TABLE bookmarks" )
end

def add_to_db
  connection = PG.connect( dbname: 'bookmark_manager_test' )
  connection.exec( "insert into bookmarks
values(1, 'http://www.makersacademy.com'),
(2, 'http://www.google.com'),
(3, 'http://www.destroyallsoftware.com')")
end
