puts "How many employees will you need to process today?"
number_of_employees = gets.to_i

until number_of_employees == 0

puts "what is your name?"
name = gets.chomp.downcase
puts "how old are you?"
age = gets.to_i
puts "what year were you born?"
birthday = gets.to_i
puts "Our company cafeteria serves garlic bread. Should we order some for you?(y/n)"
wolves_like_garlic = gets.chomp.downcase
puts "Would you like to enroll in the company’s health insurance?(y/n)"
insurance = gets.chomp.downcase

puts "Name any allergies you have, and type done when finished."
allergies = gets.chomp.downcase
until allergies == "done" || allergies == "sunshine"
	allergies = gets.chomp.downcase
end 

if (name == "drake cula") || (name == "tu fang")
	puts "Definitely a Vampire."
elsif (age + birthday == 2016) && (wolves_like_garlic == "y" || insurance == "y")
	puts "Probably not a Vampire."
elsif (age + birthday != 2016) && (wolves_like_garlic == "n" && insurance == "n")
	puts "Almost certainly a Vampire."
elsif (age + birthday != 2016) && (wolves_like_garlic == "n" || insurance == "n" || allergies == "sunshine")
	puts "Probably a Vampire."
else 
	puts "Results inconclusive."
end

number_of_employees = number_of_employees - 1
end 

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
