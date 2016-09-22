#create a hash with keys that accept values from the client 


client_info = { name: "", 
	age: "",
	number_of_children: "",
	decor_theme: "",
	pets: "",
	insured?: "" 
}
p client_info
#create the questions and store the data in a variable that coincides with a key
puts "What is your name?"
	name = gets.chomp
	client_info[:name] = name
puts "What is your age?"
	age = gets.chomp.to_i
	client_info[:age] = age
puts "How many children do you have?"
	number_of_children = gets.chomp.to_i
	client_info[:number_of_children] = number_of_children
puts "What is the decore theme you have chosen?"
	decor_theme = gets.chomp
	client_info[:decor_theme] = decor_theme
puts "Do you have pets?"
	pets = gets.chomp
	client_info[:pets] = pets
puts "Are you insured?(write: true or false)"
	insured = gets.chomp.downcase
	client_info[:insured?] = insured
#prints out the hash to the screen
p client_info
#give user opportunity to update a key
puts "Would you like to update anything? If so, write what part of your info you want to update. if not, type done."
	update = gets.chomp
if update == "decor theme"
	puts "what would you like to update the decor theme to?"
	decor_theme = gets.chomp
	client_info[:decor_theme] = decor_theme
elsif update == "done"
	exit
end
p client_info



