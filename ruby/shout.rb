# # A simple standalone module
# module Shout
#   # we'll put some methods here soon, but this code is fine for now!
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yelling_happily(phrase)
#   	phrase + "!!!" + " :)"
#   end
# end

# words = "MAMA MIA"
# phrase = "YASSSS"
# p Shout.yell_angrily(words)
# p Shout.yelling_happily(phrase)

module Shout
	def yell_angrily(words)
		words + "!!!" + " :("
	end

	def yelling_happily(phrase)
		phrase + "!!!" + " :)"
	end
end

class Choir
	include Shout
end

class Warrior
	include Shout
end

choir = Choir.new
p choir.yelling_happily("MAMA MIA")
warrior = Warrior.new
p warrior.yell_angrily("YASSS DESTROY")
