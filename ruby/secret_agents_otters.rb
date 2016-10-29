# obtain a secret word string from user
def Encrypt(secret_word)
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