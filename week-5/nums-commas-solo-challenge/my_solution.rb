# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? A fixnum
# What is the output? (i.e. What should the code return?) a string with commas after every 3rd digit
# What are the steps needed to solve the problem?
# Convert Fixnum to strings
# (optional)Convert to array consisting of one integer each, in the same order as the original fixnum. For example, the number 456 should convert to ["4", "5", "6"]
#Then have a command to iterate through each element (or last integer), pushing one element (from the end) at a time to a new placeholder array, adding a comma right before every fourth element is pushed.
#join the new array into a single string, and return the string

# 1. Initial Solution
def separate_comma(num)
  numarray = num.to_s.chars.to_a
  finarray = Array.new
  for i in 0..numarray.length-1
    if i % 3 == 0 && i > 0
      finarray.unshift(numarray.pop + ",")
    else
      finarray.unshift(numarray.pop)
    end
  end
  return finarray.join
end

# 2. Refactored Solution




# 3. Reflection