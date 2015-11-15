# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge with: Thomas Huang.

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: is an array
# Output: is a single number
# Steps to solve the problem.
# 1. total initial solution
# Create a new variable equal to sum
# Iterate through the array, adding each value to sum before moving on to the next array
# Once complete, return the sum value

#def total(sumarray)
#  sum = 0
#  for i in 0...(sumarray.length)
#    sum += sumarray[i]
#  end
#  return sum
#end


# 3. total refactored solution
def total(sumarray)
  sumarray.inject {|sum, x| sum + x}
end

# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input:
# Output:
# Steps to solve the problem.


# 5. sentence_maker initial solution
#def sentence_maker(array)
#  sentence = array[0].capitalize
#  for i in 1...(array.length)
#    sentence = sentence + " " + array[i].to_s
#  end
#  return sentence + "."
#end

# 6. sentence_maker refactored solution
def sentence_maker(array)
  array.join(" ").capitalize + "."
end

