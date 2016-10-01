class Santa
	attr_accessor :gender
	attr_reader :age, :ethnicity

	def initialize(gender, ethnicity)
		@gender = gender
		@ethnicity = ethnicity
		puts "Initializing Santa instance..."
		@reigndeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
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

end




santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
20.times do |i|
  santas << Santa.new(example_genders.sample, example_ethnicities.sample)
  puts "Creating santas..."
  puts "Gender: #{santas[i].gender}"
  puts "Ethnicity: #{santas[i].ethnicity}"
  age = rand(140)
  puts "Age: #{age}"
end




santa = Santa.new(@gender, @ethnicity)
santa.speak
santa.eat_milk_and_cookies("snickerdoodle")
puts "who is santa mad at?"
name = gets.chomp.capitalize
santa.get_mad_at(name)
#I wasnt sure if you wante the driver code age here to be 1-140 or if you wanted a new age generated above for each new santa made. so i did both!
puts "santa's original age is #{santa.age}."
age = rand(140)
puts "his age is now #{age}."



