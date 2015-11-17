# List
# input: Nothing
# steps:
  # initialize empty hash
  #
# output: Hash

def list
  {}
end

# Method to add an item list
# input: item name, optional quantity, item_list
# steps: item_list[item_name] = quantity
# output: value of key we're adding

def add_list(item_name, item_list, quantity = 1)
  item_list[item_name] = quantity
end

mylist = list

add_list("lemonade", mylist, 2)
add_list("tomatoes", mylist, 3)
add_list("onions", mylist)
add_list("ice cream", mylist, 4)

# Method to remove an item from the list
# input: item_name, item_list
# steps: remove item from hash
# output: outputs a string

def rem_list(item_name, item_list)
  item_list.delete(item_name)
  puts "You just removed #{item_name} from the list."
end
rem_list("lemonade", mylist)

# Method to update the quantity of an item
# input: item name, optional quantity, item_list
# steps: update key/value
# output: key of item removed

def update_list(item_name, item_list, quantity)
  add_list(item_name, item_list, quantity)
end
update_list("ice cream", mylist, 1)

# Method to print a list and make it look pretty
# input: Hash
# steps: Iterate through hash to output key/value pairs on individual lines
# output: Nice lookin list

def print_list(item_list)
  item_list.each do |key,value|
    puts key.capitalize + ", " + value.to_s
  end
end

print_list(mylist)

#What did you learn about pseudocode from working on this challenge?
#I learned that it can sometimes be harder than coming up with the code itself.
#What are the tradeoffs of using Arrays and Hashes for this challenge?
# We strictly used hashes, and it worked well for us in this case. I can see it being difficult to work with an array because it would be hard to match up the quantity with each specific item.
#What does a method return?
# A method returns the last argument
#What kind of things can you pass into methods as arguments?
#Arrays, strings, and mostly any types of objects
#How can you pass information between methods?
# By running the same information across methods. However, what I originally had in mind was using global variables, which would literally allow for methods to work directly on the same variable instead of manually being passed the variables.
#What concepts were solidified in this challenge, and what concepts are still confusing?
#Thanks to my guide, I didn't have too much trouble with this challenge. The most challenging part really came from understanding what the challenge was asking for.