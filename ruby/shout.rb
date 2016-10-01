module Shout
  # we'll put some methods here soon, but this code is fine for now!
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yelling_happily(phrase)
  	phrase + "!!!" + ":)"
  end
end

words = "MAMA MIA"
phrase = "YASSSS"
p Shout.yell_angrily(words)
p Shout.yelling_happily(phrase)