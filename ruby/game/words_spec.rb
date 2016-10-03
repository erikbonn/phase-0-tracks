require_relative 'words'

describe WordGame do 
	let(:game) { WordGame.new }

	it "Accepts a secret word and splits it into characters" do
    expect(game.secret(yellow)).to eq ["y", "e", "l", "l", "o", "w"]
  	end

    it "Sees if guess word is equal to secret word, if it includes some similiar letters it will say so" do
    expect(game.guess(top)).to eq ["some letters match!"]
   	end

end