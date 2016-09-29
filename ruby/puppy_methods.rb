class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(int)
  	puts "Woof!" * int
  end

  def rollover
  	puts "*rolls over*"
  end

  def dog_years(int1)
  	puts "your dog age is #{int1 * 7}"
  end

  def gainer(num)
  	puts "He just did like #{num} gainers in a row bro!"
  end
  
  def initialize
    puts "Initializing new puppy instance ..."
  end

end

#initailized a new instance of Puppy and added driver code/UI to demonstrate methods.
max = Puppy.new

puts "what toy do you want him to fetch?"
 	toy = gets.chomp
max.fetch(toy)
puts "say a number and the dog will bark that many times and he'll roll over too."
	int = gets.to_i
max.speak(int)
max.rollover
puts "enter your age and we'll convert it to dog years"
	int1 = gets.to_i
max.dog_years(int1)
puts "Enter how many gainers do you want him to do!"
	num = gets.to_i
max.gainer(num)

puts "*" * 30

class Zombie

	def initialize
		 puts "Initializing new zombie instance ..."
	end

	def stumble_walk
		puts "Carl is creepily stumble walking towards me!"
	end

	def attack
		puts "help! this zombie is attacking me!"
	end

	def voice
		puts "ARRRRGGH!!!" 
	end


end

instances_arr = []

loop do
	p Zombie.new
	instances << Zombie.new
	end
end

instances_arr.each do |call|
	Zombie.new.stumble_walk
	Zombie.new.attack
	Zombie.new.voice
end



# carl = Zombie.new
# carl.stumble_walk
# carl.attack
# carl.voice




