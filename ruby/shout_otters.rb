# module Shout

# 	def self.yell_angrily(words)
#     words + "!!!" + " :("
#  	end

#  	def self.yell_happily(other_word)
#  		other_word + "yayyyy!"
#  	end

# end

# p Shout.yell_happily("sucess!!! ")
# p Shout.yell_angrily("BOOOOOOO ")

module Shout

	def yell_angrily(words)
    	words + "!!!" + " :("
 	end

 	def yell_happily(other_word)
 		other_word + "yayyyy!"
 	end

end

class Viking
	include Shout
end

class Hacker
	include Shout
end

erik = Viking.new
p erik.yell_angrily("plunder and conquer ")
p erik.yell_happily("I discovered America ")
dexter = Hacker.new
p dexter.yell_happily("My code works! ")
p dexter.yell_angrily("But now I have 10 other problems ")
