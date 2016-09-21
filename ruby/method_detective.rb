# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

 "iNvEsTiGaTiOn".swapcase
#=> “InVeStIgAtIoN”

"zom".insert(1, "o")
#=> “zoom”

 "enhance".insert(0, "   ").insert(10, "   ")
 "enhance".center(12)
 #=> "    enhance    "

"Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"

"the usual".insert(10, " suspects")
#=> "the usual suspects"

" suspects".insert(0, "the usual")
# => "the usual suspects"

"The case of the disappearing last letter".chop
# => "The case of the disappearing last lette"

"The mystery of the missing first letter".delete "T"
# => "he mystery of the missing first letter"

"Elementary,    my   dear        Watson!".squeez("  ")
# => "Elementary, my dear Watson!"

"z".bytes
# => 122 
# (What is the significance of the number 122 in relation to the character z?) converting a string to its component bytes.

"How many times does the letter 'a' appear in this string?".count("a")
# => 4