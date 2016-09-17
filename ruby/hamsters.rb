
	puts "What is your hamster's name?"
	name = gets.chomp

	puts "How loud does your hamster squeak? (1-10)"
	volume = gets.chomp.to_f

	puts "What is the hamster's fur color?"
	color = gets.chomp

	puts "Is your hamster worthy of adoption?(Y/N)"
	adopt = gets.chomp

	puts "What is the hamster's age?"
	age = gets.chomp.to_i

	if age == ""
	puts nil
	end 

	puts "Your hamster, #{name}, has a squeak level of #{volume} and has a #{color} color.
	As for adoption, we have you down as a #{adopt}. His age is #{age}."
