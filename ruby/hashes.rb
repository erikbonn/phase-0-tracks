#create a hash with keys that accept values from the client 


client_info = { name: " ", 
	age: " ",
	number_of_children: " ",
	decor_theme: " ",
	pets: " ",
	insured?: " " 
}
p client_info
#create the questions and store the data in a variable that coincides with a key
puts "What is your name?"
	name = gets.chomp
	name = client_info.keys[1]
puts "What is your age?"
	age = gets.chomp.to_i
	age = client_info.keys[2]
puts "How many children do you have?"
	number_of_children = gets.chomp.to_i
	number_of_children = client_info.keys[3]
puts "What is the decore theme you have chosen?"
	decor_theme = gets.chomp
	decor_theme = client_info.keys[4]
puts "Do you have pets?"
	pets = gets.chomp
	pets = client_info.keys[5]
puts "Are you insured?(write: true or false)"
	name = gets.chomp.downcase
	name = client_info.keys[6]
#prints out the hash to the screen
p client_info
#give user opportunity to update a key

