puts "How many employees will be processed?(ex. 1,2,3...)"
	number = gets.chomp.to_i
until number == 0

puts "what is your name?"
	name = gets.chomp
puts "How old are you?"
	age = gets.chomp.to_i
puts "What year were you born?(ex.1978)"
	birthday = gets.chomp.to_i
puts "Our company cafeteria serves garlic bread. Should we order some for you?(y/n)"
	wolves_like_garlic = gets.chomp
puts "Would you like to enroll in the company’s health insurance?(y/n)"
	health_insurance = gets.chomp

puts "Name any allergies you have, one at a time, and enter done when finished/or if you have none."
	allergies = gets.chomp
	until allergies == "sunshine" || allergies == "done"
		allergies = gets.chomp
	end




if name == "Drake Cula" || name == "Tu Fang" 
	puts "Definitely a vampire"

elsif (birthday + age == 2016) && (wolves_like_garlic == "y" || health_insurance == "n") 
	puts "probably not a vampire"

elsif (birthday + age != 2016) && (wolves_like_garlic == "n" && health_insurance == "n")
	puts "almost certainly a vampire"

elsif (birthday + age != 2016) && (wolves_like_garlic == "n" || health_insurance == "n" || allergies == "sunshine")
	puts "probably a vampire"	

else
	puts "results inconclusive"

 end

	number = number - 1
	
end

