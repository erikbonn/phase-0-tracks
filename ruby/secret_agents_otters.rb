# obtain a secret word string from user
def encrypt(secret_word)
	# get each individual letter in the string
	i = 0 
	while i < secret_word.length
		# ommit space characters
		if secret_word[i] != " " && secret_word[i] != "z"
			# advance every letter in string forward one letter
			secret_word[i] = secret_word[i].next
		elsif secret_word[i] == " "
			secret_word[i] = " "
		elsif secret_word[i] == "z"
			secret_word[i] = "z"
		end
	i += 1
	end
	secret_word # needs to return the word
end 

def decrypt(secret_word)
	#compare the word to the alphabet
	alphabet = "abcdefghijklmnopqrstuvwxyz"
	i = 0
	while i < secret_word.length
		# take into account the spaces and z's
		if secret_word[i] != " " && secret_word[i] != "z"
			secret_word[i] = alphabet[(alphabet.index(secret_word[i]) - 1 )]
		elsif secret_word[i] == " "
			secret_word[i] = " "
		elsif secret_word[i] == "z"
			secret_word[i] = "z"
		end 
	i += 1
	end
	secret_word
end
p encrypt("abc")
p encrypt("zed")
p decrypt("bcd")
p decrypt("afe")
p decrypt(encrypt("swordfish"))
# returned swordfish because it encrypted it and then decrypted it.
# Driver code
puts "please enter secret_word:"
secret_word = gets.chomp
puts "would you like to encrypt or decrypt? (e/d)" 
choice = gets.chomp
if choice == "e" 
		p encrypt(secret_word)
	elsif choice == "d"
		p decrypt(secret_word)
	else p "not a valid response, try running the program again."
end
