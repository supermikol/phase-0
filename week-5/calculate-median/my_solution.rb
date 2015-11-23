# Calculate the Median!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge by myself.

# 0. Pseudocode
# What is the input? Array
# What is the output? (i.e. What should the code return?) A single value
# What are the steps needed to solve the problem?
=begin
1. Sort Array
2. return the value who's index is length/2 if length is odd numbered
2. else, return the average of the two values whose index is length/2 and (length/2) -1
=end

# 1. Initial Solution
def median(array)
  new_array = array.sort
  if array.length.odd?
    new_array[array.length/2]
  else
    (new_array[array.length/2].to_f + new_array[array.length/2-1].to_f)/2
  end
end

# 3. Refactored Solution
def median(array)
  new_array = array.sort.drop((array.length-1)/2)
  array.length.odd? ? new_array[0] : (new_array[0].to_f + new_array[1].to_f)/2
end


# 4. Reflection