### HAMSTERS

puts "what is your hamster's name?"
name = gets.chomp
puts "what volume level is your hamster?(1-10)"
volume = gets.to_f
puts "what is your hamster's fur color?"
color = gets.chomp
puts "Is this hamster good for adoption?(is/isn't)"
adoption = gets.chomp
puts "what is your hamster's age?"
age = gets.to_i
if age == ''
	age = nil
end

## UX PORTION
puts "Your hamster's name is #{name}, it is a #{volume} on a scale of one to ten for loudness, it is #{color}, #{age}, and #{adoption}
good for adoption!"
