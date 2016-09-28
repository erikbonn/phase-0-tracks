# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
def create_list(list)
	groceries = []
	groceries = list.split(' ')
	grocery_list = {}
	groceries.each do |item|
		grocery_list[item] = 1
	end
	grocery_list
end

p create_list("apples oranges milk")
   grocery_list = create_list("apples oranges milk")
# steps: 
  # [fill in any steps here]
  # turn input into an array 
  # iterate over array and turn array values into hash keys
  # set default quantity to 1 and set this as the hash value
  # call print method to print the list to the console [can you use one of your other methods here?]
# output: Hash [what data type goes here, array or hash?]


# Method to add an item to a list
def add_item(item, quantity, list)
	list[item] = quantity
	item
end

p add_item("lemonade", 2, grocery_list)
p add_item("tomatoes", 3, grocery_list)
p add_item("oions", 1, grocery_list)
p add_item("ice cream", 4, grocery_list)
p grocery_list
# input: item name and optional quantity
# steps: accept 2 arguments (key, value) and assign that to the hash.
# output: print out current hash


# Method to remove an item from the list
# input: would accept 2 parameters, which are the grocery list and whatever item they would like to remove.
def remove_item(item, list)
	list.delete_if do |i|
		i == item 
	end
end
remove_item("lemonade", grocery_list)
p grocery_list
# steps: Use a hash method like deleteif to remove unwanted item from the hash
# output: print updated has without the unwanted item.


# Method to update the quantity of an item
# input: would take 2 parameters. One for the item that they want to update and one for the new desired quantity.
def update_item(item, quantity, list)
	list.each do |i, q|
		if list.has_key?(item)
			list[item] = quantity
		else 
			puts "List does not contain that item."
			break
		end
	end
end

update_item("ice cream", 1, grocery_list)
p grocery_list
# steps: iterate through the hash to see if the item is present, and if so, reassign the value. If item not present, we could print an error message or call the add method that have made.
# output: print out new key and value.


# Method to print a list and make it look pretty
# input: accepts grocery list
def print_list(list)
	list.each do |item, quantity|
		puts "There are #{quantity} #{item} on the grocery list!!"
	end
end	
print_list(grocery_list)
# steps: iterate over the hash to print out the key and value pairs in a pretty way.
# output: string with the associated key and value pairs.


# RELEASE 4:
# What did you learn about pseudocode from working on this challenge?
	# Wow pseudocode helped a lot! It might have taken some time to write, but we were forced to 
	# think critically about the program before worrying about syntax, and it also served as a reference
	# when actually coding so we stayed on track.
# What are the tradeoffs of using arrays and hashes for this challenge?
	# Hashes give you the opportunity to store keys and values whereas in an array there is one value type.
	# hashes were good for having an item key and a quantity value, but the key and value themselves were arrays of strings and integers. 
# What does a method return?
	# Whatever you tell it to! also, there is also implicit return with the value of the last line of code in the method.
# What kind of things can you pass into methods as arguments?
	# you can pass other data structures as arguments as demonstrated above, or variables, or other methods.
# How can you pass information between methods?
	# By setting those methods up to accept arguments that are other methods or data structures that are contained
	# in other methods.
# What concepts were solidified in this challenge, and what concepts are still confusing?
	# Iteration over data structures was solidified for me and making the connection that methods can pass information to other methods through 
	# their arguments. I think I still need to brush up on just the process of thinking with this mindset where I can retrieve information 
	# from other methods I've already made and make a really sleek set of methods and code.








