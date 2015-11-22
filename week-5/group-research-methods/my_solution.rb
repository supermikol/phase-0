# Research Methods

# I spent [] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution [by Michael Du]
def my_array_finding_method(source, thing_to_find)
  source.select {|element| element.to_s.include? thing_to_find}
end

def my_hash_finding_method(source, thing_to_find)
  source.select {|name,age| age == thing_to_find}.keys
end

# Identify and describe the Ruby method(s) you implemented.

# Array#reject An enumerable method that returns an array after rejecting all elements that fulfill the block
# #to_s converts an object to a string
# #include? checks to see if a letter or string is included inside another string
# Hash#select returns a hash with only the values that fulfill the conditions in the block
# Hash#keys Converts a hash into an array with only the keys
# Tricks for ruby-doc! For iterating through arrays, I found the enumerable page to be very helpful, but for Hash, you might want to navigate to the Hash page on Ruby-docs. http://ruby-doc.org/core-2.2.2/Hash.html
# Skimming over each one is probably your best best. For me, I think it was part luck that I happened to skim over the ones I needed early on.

# Person 2's solution [by Nick Davies]
def my_array_modification_method!(source, thing_to_modify)
  source.map! do |i|
    if i.is_a?Integer
      i + thing_to_modify
    else i
    end
  end
  return source
end

def my_hash_modification_method!(source, thing_to_modify)
  source.update(source){|key,value| value + thing_to_modify}
  return source
end

# Identify and describe the Ruby method(s) you implemented.
# .map! loops through elements of an array and destructively modifies each one according to a code block provided.
# .is_a? checks whether the object is of the specified type and returns true/false.
# .update (also called .merge) takes a second hash and merges it into the first. A code block can be specified to handle cases where both hashes have the same keys. Used in this way (merging the same hash into itself), it essentially functions like .map!, as long as you only want to change the values, not the keys.

# Person 3's solution [by KB DiAngelo]
def my_array_sorting_method(source)
return source.sort {|item1, item2| item1.to_s <=> item2.to_s}
end
def my_hash_sorting_method(source)
return source.sort_by {|key, value| value}
end
# Identify and describe the Ruby method(s) you implemented.
#
# .to_s : converts an object (in this case a fixnum) to a string
# .sort { |a, b| block comparing a and b with <=>} : uses the block provided to compare each item to its neighbor and return whether it comes before or after
# .sort_by { |a, b| a block telling it which to sort by} : uses the block provided to sort by what is specified
#

# Person 4's solution [by Nick Davies]
def my_array_deletion_method!(source, thing_to_delete)
  source.reject! do |item|
    item.to_s.include?(thing_to_delete)
  end
end

def my_hash_deletion_method!(source, thing_to_delete)
  source.reject! do |key, value|
    key.to_s.include?(thing_to_delete)
  end
end

# Identify and describe the Ruby method(s) you implemented.
# .reject! is the opposite of .select! They both take an enumerable and take away some of its items based on a code block. But Reject takes away the item if the code block evaluates to True.
# .include checks whether the string being evaluated contains the string being passed in.


# Person 5
def my_array_splitting_method(source)
  source.partition {|x| x.is_a?(Integer)}
end

def my_hash_splitting_method(source, age)
  source.partition {|key, value| value < age}
end

# Identify and describe the Ruby method(s) you implemented.
# Enumerable#partition takes an enumerable and then breaks it up into two arrays, the first one consisting of all the values/key-value pairs that pass the condition provided in the block, and the remaining elements will be stored in the second array.
#
#



# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#
#
#
#