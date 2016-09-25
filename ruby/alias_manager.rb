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
	p new_name
end

def change(name)
 name.chars.map! do
    |x|
#change all vowels one value forward. [aeiou] = > [eioua]
    if  x == "a"
        x = "e"
     elsif x == "e"
        x = "i"   
     elsif x == "i"
        x = "o"   
     elsif x == "o"
        x = "u"   
     elsif x == "u"
        x = "a"   
#change all consonants next to vowels 2 spaces forward
    elsif x.next == "a" || (x.next == "e" || x.next == "i" || x.next == "o" || x.next == "u")
        x = x.next.next
#change all leftover ( !consonate_next_to_vowel, !vowel) to one value forward
    else
        x = x.next
     end
end
end

#make a method that calls both change and last_first methods and make a loop that will call it everytime someone enters any name but quit.
def combo(name)
	change(name)
	last_first(name)
end

name_database = {
	real_names: ["joe", "jake", "bryan"],
	secret_names: ["rio", "keli", "cszep"]
}
# puts "Want to create a secret name? Type in a normal name (first/last) to return a secret code name."
# name = gets.chomp
# until name == "quit"
# 	combo(name)
# 	puts "want to create another? If not, type quit."
# 	name = gets.chomp
# end


# Use a data structure to store the fake names as they are entered. When the user exits the program, 
# iterate through the data structure and print all of the data the user entered.
loop do puts "want to create a secret name? type your first and last name in or type quit to exit."
	name = gets.chomp
	name_database[:real_names] = name
	if name != "quit"
		combo(name)
		name_database[:secret_names] = combo(name)
	elsif name == "quit"
	break
	end
end
# I need to find out how to get all of the real and secret names to print below and not have the real names just be "quit".
p name_database[:secret_names]
p "are actually known as:" 
p name_database[:real_names]


