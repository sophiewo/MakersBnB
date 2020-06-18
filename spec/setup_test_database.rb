require 'pg'

def setup_test_database
  p 'Setting up test database...'
  connection = PG.connect :dbname => 'makersbnb_test'
  connection.exec ("TRUNCATE listing CASCADE;")
  connection.exec ("TRUNCATE users CASCADE;")
  connection.exec ("TRUNCATE booking;")
end
