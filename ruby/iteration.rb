# def hello
# 	puts "This is before the block"
# 	yield("Erik", "Evan")
# 	puts "This is after the block"
# end

# hello{|name1, name2| puts "hello to #{name1} and #{name2}!"}


#release 1
person = {
	name: "Evan",
	age: 24,
	favorite_color: "blue"
}
suits = ["hearts", "diamonds", "clubs", "spades"]
p person
p suits

person.each do |key, value|
	puts "#{key} is #{value}."
end

suits.each do |suit|
	puts "#{suit} is suit in a deck of cards."
end
p person
p suits

suits.map! do |suit|
	"armani"
end

p suits

#release 2
#1
numbers = [1, 2, 3, 4, 5, 6, 7, 8]

h = {a: 100, b: 200, c: 300}

numbers.delete_if do |value|
	value < 5 
end
p numbers


h.delete_if do |key, value|
	value < 200
end
p h

#2
numbers = [1, 2, 3, 4, 5, 6, 7, 8]

h = {a: 100, b: 200, c: 300}

numbers.keep_if do |value|
	value < 5
end
p numbers

h.keep_if do |key, value|
	value < 200
end
p h

#3
numbers = [1, 2, 3, 4, 5, 6, 7, 8]

h = {a: 100, b: 200, c: 300}

modified_numbers = numbers.select do |value|
	value.odd?
end
p modified_numbers

modified_h = h.select do |key, value|
	value < 300
end
p modified_h

#4
mod_numbers = numbers.drop_while do |value|
	value.odd?
end
p mod_numbers

h2 = {a: 100, b: 200, c: 300, d: 150}
mod_h2 = h2.drop_while {|key, value| value < 300 }
p mod_h2 #this returns an array, but this is the best we can do!




