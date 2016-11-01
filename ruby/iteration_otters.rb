### Release 0 

# def hey
# 	puts "This is before the block"
# 	yield("Erik", "Ben")
# 	puts "This is after the block"
# end

# hey{|name1, name2| puts "hello to #{name1} and #{name2}!"}
 
# RELEASE 1

stars = ["Samuel L", "Joseph Gordon Leavitt", "Tina Fey"]
car = {color: "blue", make: "Chevy", year: "2017"}

stars.each do |name|
	puts "#{name} is a movie star"
end

car.each do | key, value |
	puts "The #{key} is #{value}"
end

p stars
p car

stars.map! do |name|
	puts "#{name} is a movie star"
	name.reverse
end

p stars
p car

### RELEASE 2

numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9]

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
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9]

hashy = {a: 100, b: 200, c: 300}

modified_numbers = numbers.select do |value|
	value.odd?
end
p modified_numbers

modified_hashy = hashy.select do |key, value|
	value < 300
end
p modified_hashy

#4
mod_numbers = numbers.drop_while do |value|
	value.odd?
end
# just drops 1 and then stops because the next number is even
p mod_numbers

h = {a: 100, b: 200, c: 300, d: 150}
mod_h = h.drop_while {|key, value| value < 300 }
p mod_h #this returns an array, but this is the best we got!


