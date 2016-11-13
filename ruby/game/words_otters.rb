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



