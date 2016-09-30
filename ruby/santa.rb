class Santa
	def speak
		puts "Ho, ho, ho! Haaaappy holidays"
	end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}!"
	end

	def initialize
		puts "Initializing Santa instance..."
	end

end

puts "what cookie do you like?"
cookie = gets.chomp

t = Santa.new
t.speak
t.eat_milk_and_cookies(cookie)