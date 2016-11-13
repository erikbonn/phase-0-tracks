require_relative 'words_otters'

describe WordGame do
	let(:game) { WordGame.new("chop") }

	it "Changes word to underscores to hide it" do
	expect(game.underscore).to eq "____"
	end

	it "compares input letter with word letters and fills in the blanks where there is a match." do
	expect(guess_letters("o")).to eq "__o_"
	end

end

# I havent' gotten these to work yet with the driver code and logic I currently have in place in the program file. 
# If I comment some parts out and specifically ask for the underscore method or guess_letters method, I can make the tests pass, 
# but then my program isn't completely functioning like it should. still working on it.