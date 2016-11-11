class Santa
	attr_accessor :gender
	attr_reader :age, :ethnicity

	def initialize(gender, ethnicity)
		@gender = gender
		@ethnicity = ethnicity
		puts "initializing Santa instance..."
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(type)
		puts "That was a good #{type}!" 
	end

	def celebrate_birthday
		puts @age += 1
	end

	def get_mad_at(name)
		@reindeer_ranking.delete(name)
		@reindeer_ranking.push(name)
		puts @reindeer_ranking
	end

end


santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
50.times do |i|
  santas << Santa.new(example_genders.sample, example_ethnicities.sample)
  puts "We have a Santa that is #{santas[i].gender}, and #{santas[i].ethnicity}."
  age = rand(140)
  puts "Santa's Age: #{age}"
  puts "*" * 30
end


santa = Santa.new("straight as an arrow", "Not sure...")
santa.speak
santa.eat_milk_and_cookies("bocolate bip bookie!")
puts "who is santa mad at?"
name = gets.chomp.capitalize
puts "----" * 3
santa.get_mad_at(name)
age = rand(140)
puts "his age is #{age}."
puts "But now it's his birthday, so he is now #{age + 1}!!!"

