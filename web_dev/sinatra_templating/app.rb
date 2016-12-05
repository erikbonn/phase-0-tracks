# require gems
require 'sinatra'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students")
  erb :home
end

# get '/students/new' do
#   erb :new_student
# end

get '/students/new' do
  erb :major
end

# create new students via
# a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age, major) VALUES (?,?,?,?)", [params['name'], params['campus'], params['age'].to_i], params['major'])
  redirect '/'
end

#### My issue with this is that I need to add a major column to the db for the major names to be stored. I think everything else looks ok though, I'm out 
#### of time, but I can come back later to figure that out.

# add static resources



