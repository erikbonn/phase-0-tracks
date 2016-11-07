class Puppy

  def fetch(ball)
    puts "I brought back the #{ball}!"
    ball
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

  def high_five(num)
  	puts "He just gave like #{num} high fives in a row bro!"
  end
  
  def initialize
    puts "Initializing new puppy instance ..."
  end

end

#initailize new instance of Puppy and add driver code/UI to demonstrate methods.
ben = Puppy.new

puts "what toy do you want him to fetch?"
  ball = gets.chomp
ben.fetch(ball)
puts "say a number and the dog will bark that many times and he'll roll over too."
  int = gets.to_i
ben.speak(int)
ben.rollover
puts "enter your age and we'll convert it to dog years"
  int1 = gets.to_i
ben.dog_years(int1)
puts "Enter how many high fives do you want him to give!"
  num = gets.to_i
ben.high_five(num)
puts "*********************************"

##### RELEASE 2 #######
class Parrot
  def initialize
  end

  def squak
    p "Brraap! I'm a parrot!"
  end

  def fly_to
    p "He flew to Arabia!"
  end

  def eat_a_cracker
    p "He just ate 40 crackers!"
  end
end

instance_arr = []

50.times do |i|
  i = Parrot.new
  instance_arr << i
end

instance_arr.each do |instance|
  instance.squak
  instance.fly_to
  instance.eat_a_cracker
end
