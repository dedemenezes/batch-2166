require 'sqlite3'

DB = SQLite3::Database.new("./patients_doctors.sqlite")

rows = DB.execute("SELECT * FROM patients")
p rows.first

rows.each do |row|
  puts row[1]
end
