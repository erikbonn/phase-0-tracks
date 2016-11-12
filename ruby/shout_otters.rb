module Shout

	def self.yell_angrily(words)
    words + "!!!" + " :("
 	end

 	def self.yell_happily(other_word)
 		other_word + "yayyyy!"
 	end

end

p Shout.yell_happily("sucess!!! ")
p Shout.yell_angrily("BOOOOOOO ")