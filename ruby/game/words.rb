#### WORD GUESSING GAME PSEUDOCODE ####
# define a class WordGame
# make a guess count allowed attribute and a gameover attribute available outside of class 
#   in driver code. 

# have an initialize method that has an attribute that stores
#   player guesses in a data structure, an attribute that has a default value for the 
#   count of guesses allowed, and a gameover attribute that is set to false

# A method where the Secretword should be split into letters. the index of the split up word 
# should be set equal to the guess count allowed attribute.

# create a method for player's guess word
# add a -1 to the guess count allowed attribute UNLESS the word is equal to one of the previously stored guesses
# If the guess word is equal to the secret word, the gameover attribute will be set to true.
#    If it is not equal to the secret word, it will continue. It will also look for similar letters between the 
#    secret word and guess word.
# 
# 
#
#### USER INTERFACE ####
# welcome the user to the wordgame, have it initialize a new instance of
#    the WordGame class.
# have it ask the person what the secret word is. 
#    Accept the secret word, set the count length to the secret length, and apply the secretword method to secret. 
#
# while the gamover attribute is false, Ask the 2nd player what the guess word is and apply the guess method to it.
#    see if there are matching letters between the guessword and
#    secretword and print them out with the rest of the length of the secret word blocked out with ----'s 
#    And if no letters match, have it tell the user that they need to step up their game. 
# 	if gameover attribute is not false, have it print the secret word and also say, "nice you got it!"

class WordGame
	attr_accessor :guess_count_allowed, :gameover, :secretword

	def initialize
		@guesses = []
		@guess_count_allowed = guess_count_allowed
		@gameover = false
		@secrets = []
	end

	def secret(secretword)
		@secretword = secretword
		secretword.chars
	end


	def guess(guessword)
		@guessword = guessword 
		if  guessword == secretword
			puts "yayyy!! nice work!"
			@gameover = true
		else 
			guessword.include? "#{secretword.chars}"
			puts "some letters match!"
			#couldn't figure out the replacing the letters of the secret word with ---'s in time!! : (
	    end
	end

secrets = []
guesses = []

### USER INTERFACE ###
puts "Welcome to the word guessing game!"
game = WordGame.new
	puts "Type the secret word you want to use!"
	secretword = gets.chomp
	guess_count_allowed = secretword.length
	game.secret(secretword)
	secrets << secretword
while !game.gameover
	puts "Player2, what do you think the secret word is?"
	guessword = gets.chomp
	game.guess(guessword)
	guesses << guessword
	# if guessword == guesses
	# 	guess_count_allowed += 1
	# end
	if guess_count_allowed > 1
		guess_count_allowed -= 1
		p "You have #{guess_count_allowed} guesses left!"
	elsif guess_count_allowed == 1
	 	game.gameover = true
	 	puts "come on!"
	elsif game.gameover == true 
		puts "step it up!"
	 	end		
end
end

###### I ran out of time trying to make this, I'm sorry I couldn't get everything to work and make tests!

