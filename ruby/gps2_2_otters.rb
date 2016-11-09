# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # Start with a blank list
    # Take the item given to us 
    # Split into separate multiple items
    # Use the items given to put into our blank list
  # set default quantity to one each
  # print the list to the console [can you use one of your other methods here?]
# output: hash
def create_list(item)
    grocery_list = {}
    groceries = item.split(' ')
    groceries.each do |item| 
        grocery_list[item] = 1
    end
    grocery_list
end
updated_list = create_list("bananas tomatoes potatoes cheese")
# Method to add an item to a list
# input: item name
# steps: 
    # Take item that needs added
    # Add item to the end of the list
# output: hash
def add_item(updated_list, item, quantity)
    updated_list[item] = quantity
    updated_list
end
p add_item(updated_list, "lemonade", 2)
p add_item(updated_list, "tomatoes", 3)
p add_item(updated_list, "onions", 1)
p add_item(updated_list, "ice cream", 4)
# Method to remove an item from the list
# input: item that we don't want on our list
# steps:
    # Identity the item that needs to go
    # Find the item within our list
    # Remove said item
# output: hash 
def remove_item(updated_list, item)
    updated_list.delete_if { |i| i == item}
end
p remove_item(updated_list, "lemonade")
# Method to update the quantity of an item
# input: the item name and the amount of that item
# steps:
    # Look through the list to find the item
    # Match the item with the corresponding amount
    # Set the item/quantity to the updated list
    # Do this for all the items to create a item/quantity pair
# output: hash
def change_quantity(updated_list, item, quantity)
    updated_list.each do |i, q|
        if updated_list.has_key?(item)
            updated_list[item] = quantity
        else
            puts "This list does not have that item."
            break
        end
    end
end
p change_quantity(updated_list, "ice cream", 1)
# Method to print a list and make it look pretty
# input: updated list of items and quantities
# steps:
    # Create a template for our list information
    # Cycle through the list
    # Print the list using the template
# output: strings
def print_list(updated_list)
    updated_list.each do |item, quantity|
        puts "There are #{quantity} #{item} on the list!"
    end
end
p print_list(updated_list)

#### RELEASE 4:
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
