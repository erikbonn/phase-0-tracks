# Swapping the first and last name.
# Changing all of the vowels (a, e, i, o, or u) to the next vowel in 'aeiou', 
# and all of the consonants (everything else besides the vowels) to the next consonant 
# in the alphabet. So 'a' would become 'e', 'u' would become 'a', and 'd' would become 'f'.

#here's a method that switches first and last name.
def last_first(name)
	#first separate the two names and change them into indexes in an array
	new_name = name.split(' ')
	new_name.class
	#then permanently reverse the order of the two indexes in the string
	new_name.reverse!
	new_name.to_s
	p new_name
end
#use .map and .next to move letters forward
def alter(name)
 name.chars.map! do
    |letter|
#change all vowels one vowel forward
    if  letter == "a"
        letter = "e"
     elsif letter == "e"
        letter = "i"   
     elsif letter == "i"
        letter = "o"   
     elsif letter == "o"
        letter = "u"   
     elsif letter == "u"
        letter = "a"   
    else
        letter = letter.next
     end
end
end

#make a method that calls both alter and last_first methods and make a loop that will call it everytime someone enters any name but quit.
def combo(name)
	last_first(name) 
	alter(name).join
	
end

#here is my data structure
name_database = {
	real_names: [],
	secret_names: []
}


# Use a data structure to store the fake names as they are entered. When the user exits the program, 
loop do puts "want to create a secret name? type your first and last name in or type quit to exit."
	name = gets.chomp
	name_database[:real_names] << name
	if name != "quit"
		name_database[:secret_names] << combo(name)
	elsif name == "quit"
		name_database[:real_names].delete("quit")
	break
	end
end

# iterate through the data structure and print all of the data the user entered.
name_database.each do |key, value|
	puts "#{key} are #{value}"
end
#### I couldn't figure out how to do everything, and I unfortunately ran out of time tryin to make the last name first method have the 
#### alter method applied to it as well so that the name in the database would be reversed AND have the letters swithced. 
