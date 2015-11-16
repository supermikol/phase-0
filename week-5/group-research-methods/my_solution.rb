# Research Methods

# I spent 1 hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  source.reject {|element| element unless element.to_s.include? thing_to_find}
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

# Person 2
def my_array_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 3
def my_array_sorting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_sorting_method(source)
   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 4
def my_array_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 5
def my_array_splitting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_splitting_method(source, age)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#
#
#


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#
#
#
#
