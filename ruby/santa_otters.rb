class Santa

	def initialize(gender, ethnicity)
		puts "initializing Santa instance..."
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(type)
		puts "That was a good #{type}!" 
	end



end

santa = Santa.new
santa.speak
santa.eat_milk_and_cookies("chocolate chip cookie")