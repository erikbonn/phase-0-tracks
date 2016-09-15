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

if name == "Drake Cula" || name == "Tu Fang" 
	puts "Definitely a vampire"

elsif (birthday + age == 2016) && (wolves_like_garlic == "y" || health_insurance == "n") 
	puts "probably not a vampire"

elsif (birthday + age != 2016) && (wolves_like_garlic == "n" && health_insurance == "n")
	puts "almost certainly a vampire"

elsif (birthday + age != 2016) && (wolves_like_garlic == "n" || health_insurance == "n")
	puts "probably a vampire"	

else
	puts "results inconclusive"

 end


