### WORD GUESSING GAME ####
# the Wordgame class will contain an initialize method that accepts a word, a gameover attribute set to default of false, a default count of the 
# guesses made, and a method that tracks the current progress of the word.

# There will be a underscore method that has a default value (empty string) of the progresion of the word, and for every letter of the word
# entered, it replaces it with an underscore and puts it into that progression string.
# it also returns the updated (hidden) word.

# It will also have a guess letter method that splits the word into letters, and at each letter's index, checks to see if the guess letter 
# is equal to the real word's letter. If so, It makes the progress string's letter at the corresponding index equal to the correctly guessed
# letter.

# UI ######
# The user will be prompted to enter a word. the word will be accepted and used as the argument for a new instance of the wordgame class.
# the underscore method will be used on the word to hide the values of each letter.

# the user will be prompted to guess a letter and the input will be used as the argument for the guess letter method that will uncover any
# correct letter guesses. at this point a tally will be incremented for the number of guesses that the user makes, as long as the same 
# letter has not been guessed before. If the number of letter guesses exceeds the length of the word, then the gameover status will be set
# to true, giving a taunting message. If the user correctly guesses all of the letters of the word without exceeding the number of guesses 
# allowed, a congratulatory message is printed.

class WordGame
	attr_reader :word, :underscore, :guesses_left
	attr_accessor :gameover

	def initialize(word)
		@word = word
		@progress = underscore
		@gameover = false
		@letters_guessed = []
		@guesses_left
	end 

	def underscore
		progress = ""
		@word.length.times do 
			progress << "_"
		end
		progress
	end

	def guess_letters(letter)
		@word.split('').each_with_index do |lett, i|
			if lett == letter
			@progress[i] = lett
			end
		end
			if !@letters_guessed.include?(letter)
				@letters_guessed << letter
			end
		@guesses_left = @word.length - @letters_guessed.length
			# puts @word.length
			# puts @letters_guessed.length
			p "#{@guesses_left} guesses left!"
		p @progress
		if !@progress.include?('_')
			p "U SMART -DJ KHAlID"
			@gameover = true
		end
	end

end

##### DRIVER CODE #####

puts "Welcome to the Word Guessing Game!"
puts "Enter the word you want to use for player 2 to guess."
	words = gets.chomp.downcase
game = WordGame.new(words)

until game.gameover == true
	if game.guesses_left == 0 
		game.gameover = true
		puts "You stink! Try again Einstein!"
	else
		puts "Player 2, guess a letter!"
		letter = gets.chomp.downcase
		game.guess_letters(letter)
	end
end

# game = WordGame.new("chop")
# p game.underscore
# p game.guess_letters("o")

###### 
# In the game class we will have an initialize method that accepts a word. the method will also contain a gameover variable that
# is defaulted to false and a guesses left variable and a letters guessed variable equal to an array.
#
# there will be an underscore method where the word entered will be set to underscores the same length as the word.
#
# there will be a guess_letter method that accepts an input of a letter. the letter will be compared to the original word and
# any letters that match will replace underscores with that letter. when there are no more underscores left, the gameover will be 
# set to true. there will also be a counter on this loop that will give the player as many guesses as there are letters in the word.
# If the player uses the same letter they've used before, the guess_count will not go down.
# 
# If the number of letter guesses exceeds the length of the word, then the gameover status will be set
# to true, giving a taunting message. If the user correctly guesses all of the letters of the word without exceeding the number of guesses 
# allowed, a congratulatory message is printed.

# class GuessingGame 
# 	attr_reader :guess_count, :word, :underscore
# 	attr_accessor :gameover
# 	def initialize(word)
# 		@word = word
# 		@gameover = false
# 		@letters_guessed = []
# 		@guess_count
# 		@progress = underscore
# 	end

# 	def underscore
# 		progress = ""
# 		@word.length.times do |i|
# 			progress << "_" ### creating a new string of the same length called progress.
# 		end 
# 		progress
# 	end

# 	def guess_letter(letter)
# 		@word.split('').each_with_index do |lett, i|
# 			if lett == letter
# 				@progress[i] = lett
# 			end
# 		end
# 		if !@letters_guessed.include?(letter)
# 			@letters_guessed << letter
# 		end
# 		@guess_count = @word.length - @letters_guessed.length 
# 			# puts @word.length
#  		# 	puts @letters_guessed.length
#  		p @progress
# 		puts "#{@guess_count} guesses left!"
# 		if !@progress.include?("_")
# 			puts "YASS You win!"
# 			@gameover = true
# 			return
# 		end
# 	end
		

# end

# # game = GuessingGame.new("good")
# # p game.underscore
# # p game.guess_letter("o")

# puts "Player1, enter the word!"
# word = gets.chomp
# game = GuessingGame.new(word)
# game.underscore             ##### NOT SURE HOW THIS WORKED WITHOUT ATTR READER
# until game.gameover == true
# 	if game.guess_count == 0
# 		game.gameover = true
# 		puts "You kinda suck at this game... try again!"
# 	else
# 		puts "Alright player2, guess a letter!"
# 		letter = gets.chomp
# 		game.guess_letter(letter)
# 	end
# end



