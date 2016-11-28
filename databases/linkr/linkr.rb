# Linkrr could be a sort of census type app that provides data to dating companies on how many people are using what apps etc

# gems
require 'sqlite3'
require 'faker'

# create database
db = SQLite3::Database.new("linkr.db")
db.results_as_hash = true

# string delimiters
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS dating_resources (
  id INTEGER PRIMARY KEY,
  name VARCHAR(255),
  is_verified_source BOOLEAN
  )
SQL
create_table_cmd2 = <<-SQL
  CREATE TABLE IF NOT EXISTS potential_daters (
  id INTEGER PRIMARY KEY,
  first_name VARCHAR(255),
  last_name VARCHAR(255),
  willing_to_meet BOOLEAN,
  resource_id INT,
FOREIGN KEY(resource_id) REFERENCES dating_resources(id)
)
SQL

# create a table, or two
db.execute(create_table_cmd)
db.execute(create_table_cmd2)
# add a test 
db.execute("INSERT INTO dating_resources (name, is_verified_source) VALUES ('Tinder', 'True')")
db.execute("INSERT INTO dating_resources (name, is_verified_source) VALUES ('Bumble', 'True')")
db.execute("INSERT INTO dating_resources (name, is_verified_source) VALUES ('Yentes Matchmaking service', 'False')")
db.execute("INSERT INTO potential_daters (first_name, last_name, willing_to_meet, resource_id) VALUES ('Cassie', 'Longfellow', 'True', 2)")
db.execute("INSERT INTO potential_daters (first_name, last_name, willing_to_meet, resource_id) VALUES ('Jackson', 'Williams', 'True', 1)")
# INSERT INTO potential_daters (first_name, last_name, willing_to_meet, resource_id) VALUES ("Bruce", "jones", "True", 1)
# INSERT INTO potential_daters (first_name, last_name, willing_to_meet, resource_id) VALUES ("Cami", "Dangerfield", "True", 1)
# INSERT INTO potential_daters (first_name, last_name, willing_to_meet, resource_id) VALUES ("Creepy", "McCreeper", "True", 3)
# INSERT INTO potential_daters (first_name, last_name, willing_to_meet, resource_id) VALUES ("Brittany", "Branbury", "false", 1)
# INSERT INTO potential_daters (first_name, last_name, willing_to_meet, resource_id) VALUES ("Kevin", "Tanner", "True", 2)
# INSERT INTO potential_daters (first_name, last_name, willing_to_meet, resource_id) VALUES ("Billy", "Taylor", "True", 1)

# add daters and dating resources
def dating_resources(db, name, is_verified_source)
  db.execute("INSERT INTO dating_resources (name, is_verified_source) VALUES (?, ?)", [name, is_verified_source])
end

def create_daters(db, first_name, last_name, willing_to_meet, resource_id)
  db.execute("INSERT INTO potential_daters (first_name, last_name, willing_to_meet, resource_id) VALUES (?, ?, ?, ?)", [first_name, last_name, willing_to_meet, resource_id])
end

100.times do
  dating_resources(db, Faker::Name.name, 'true')
end

100.times do
  create_daters(db, Faker::Name.first_name, Faker::Name.last_name, 'true', rand(1..3))
end

# explore ORM by retrieving data
# kittens = db.execute("SELECT * FROM kittens")
# kittens.each do |kitten|
#  puts "#{kitten['name']} is #{kitten['age']}"
# end



