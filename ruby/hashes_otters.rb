#create a hash with keys that will accept values from the client 


client_info = { name: "", 
	age: "",
	number_of_children: "",
	decor_theme: "",
	pets: "",
	insured?: "" 
}

puts "What is your child's name?"
	child_name = gets.chomp
	client_info[:name] = child_name
puts "How old is Yo Child?"
	age = gets.to_f
	client_info[:age] = age
puts "How many kids you got?"
	number_of_children = gets.to_i
	client_info[:number_of_children] = number_of_children
puts "What decor theme you need?"
	decor_theme = gets.chomp
	client_info[:decor_theme] = decor_theme
puts "What kinda pet yo child want?"
	pets = gets.chomp
	client_info[:pets] = pets
puts "Are you sure you insured? (true/false)"
	insured = gets.chomp.downcase
	client_info[:insured?] = insured
p client_info

puts "You wanna update anything? If so, write what part of your info you want to update. if not, type done."
	update = gets.chomp.downcase
if 	update == "done"
		exit
else	update.intern
		puts update.intern
		puts "what would you like to update this to?"
		new_value = gets.chomp
		client_info[update.intern] = new_value

end
p client_info