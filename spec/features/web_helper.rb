require 'pg'

def setup_delete_db
  connection = PG.connect( dbname: 'bookmark_manager_test' )
  connection.exec( "DROP TABLE IF EXISTS bookmarks" )
end

def setup_create_db
  connection = PG.connect( dbname: 'bookmark_manager_test' )
  connection.exec( "create table bookmarks (id serial primary key, url varchar(60)) ")
end

def setup_db
  setup_delete_db
  setup_create_db
end

def add_to_db
  connection = PG.connect( dbname: 'bookmark_manager_test' )
  connection.exec( "insert into bookmarks
values(1, 'http://www.makersacademy.com'),
(2, 'http://www.google.com'),
(3, 'http://www.destroyallsoftware.com')")
end
