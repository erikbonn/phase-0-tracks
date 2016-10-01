class Santa
	def initialize(gender, ethnicity)
		@gender = gender
		@ethnicity = ethnicity
		puts "Initializing Santa instance..."
		@reigndeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end

	def about 
		puts "Gender: #{@gender}"
		puts "Ethnicity: #{@ethnicity}"
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays"
	end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}!"
	end

	def celebrate_birthday
		age += 1
	end

	def get_mad_at(name)
		@reigndeer_ranking.delete(name)
		@reigndeer_ranking.push(name)
		puts @reigndeer_ranking
	end

	def gender #=(new_gender)
		@gender #= new_gender
	end

	def ethnicity #=(new_eth)
		@ethnicity #= new_eth
	end

	def age 
		@age
	end

	def ethnicity
		@ethnicity
	end

end




santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i])
  puts "Creating santas..."
  puts "Gender: #{santas[i].gender}"
  puts "Ethnicity: #{santas[i].ethnicity}"
end




santa = Santa.new(@gender, @ethnicity)
santa.speak
santa.eat_milk_and_cookies("snickerdoodle")
puts "who is santa mad at?"
name = gets.chomp
santa.get_mad_at(name)

# puts "age is #{age}."
# puts "enter new age:"
# age = gets.to_i
# puts "age is #{age}."


