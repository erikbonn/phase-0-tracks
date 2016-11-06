# I'll make a method that splits the letters of the name into an array of letters and then reverses the first and last name letters
# then I'll make a method that that takes all of the letters in the name and has conditionals that move the vowels to the next
# vowel and the letters aren't vowels then it advances them one letter.
# I'll then create a method that calls both the last name first method and the letter advancing method. 
# I'll have a data structure (hash) to hold the names(array) and secret names(array).
def last_first(name)
	#first separate the two names and change them into indexes in an array
	new_name = name.chars
	new_name.class
	#then permanently reverse the order of the two indexes in the string
	new_name.reverse!
	new_name.to_s
	new_name
end 

def cipher(name)
	name.chars.map! do |letter|
		if letter == " "
			letter = " "
		elsif letter == "a" 
			letter = "e"
		elsif letter == "e"
			letter = "i"
		elsif letter == "i"
			letter = "o"
		elsif letter == "o"
			letter = "u"
		elsif letter == "u"
			letter = "a"
		elsif
			letter == "T"
			letter = "V"
		else
			letter.next
		end
	end
end

def combo(name)    #I'm having some sort of accessablity issue with only the cipher method running here. so alters the name but doesn't reverse it like it should.
	last_first(name)
	cipher(name).join
end

names_database = {
	originals: [],
	secrets: []
}
 
loop do puts "want to create a secret name? type your first and last name in or type quit to exit."
	name = gets.chomp
	names_database[:originals] << name
	if name != "quit"
		names_database[:secrets] << combo(name)
	elsif name == "quit"
		names_database[:originals].delete("quit")
	break
	end
end

names_database.each do |key, value|
	puts "#{key} are #{value}"
end


# last_first("erik bonn")
# p cipher("erik bonn")