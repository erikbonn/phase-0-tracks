# get a string 
def encrypt(user_string)


	# get each individual letter in the string
	i = 0 
	while i < user_string.length
		# ommit the space characters
		if user_string[i] != " " && user_string[i] != "z"
			# advance every letter in string forward one letter
			user_string[i] = user_string[i].next
		elsif user_string[i] == " "
			user_string[i] = " "
		elsif user_string[i] == "z"
			user_string[i] = "z"
		end
	i += 1

	end
	# return the new string
	user_string
end
#get the new string 
def decrypt(user_string)
#match new string against existing alphabet
	alphabet = "abcdefghijklmnopqrstuvwxyz"
	i = 0
		while i < user_string.length
			# ommit the space characters
			if user_string[i] != " " && user_string[i] != "z"
				# advance every letter in string backward one letter
				user_string[i] = alphabet[(alphabet.index(user_string[i]) - 1 )]
			elsif user_string[i] == " "
				user_string[i] = " "
			elsif user_string[i] == "z"
				user_string[i] = "z"
			end 
			i += 1
		end
#return old string
user_string
end

puts "please enter password:"
input = gets.chomp
puts "would you like to encrypt or decrypt? (e/d)" 
choice = gets.chomp
if choice == "e" 
		p encrypt(input)
	elsif choice == "d"
		p decrypt(input)
end
#returned swordfish because it encrypted it and then decrypted it.
p decrypt(encrypt("swordfish"))