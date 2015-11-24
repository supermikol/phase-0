# Calculate the mode Pairing Challenge

# I worked on this challenge with Jonathan Huang.

# I spent 1.5 hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.

# 0. Pseudocode

# What is the input? Array
# What is the output? (i.e. What should the code return?) An array with the modes
# What are the steps needed to solve the problem?
=begin
1. Define hash
2. Assign all unique elements to the keys, and assign a default value of 1.
3. Count number of each unique element within array, and assign that value to the hash value.
4. Find max values and put those keys in an array.
5. Return array
=end

# 1. Initial Solution
def mode(array)
  new_hash = Hash.new
  array.uniq.each {|x| new_hash[x] = 1}
  new_hash.each {|element, value| new_hash[element] = array.count(element)}
  max = 0
  new_hash.each {|key, value| max = value if value > max}
  new_hash.select! {|key, value| value == max}
  return new_hash.keys
end

# 3. Refactored Solution
def mode(array)
  new_hash = Hash.new
  array.each {|x| new_hash[x] = array.count(x)}
  new_hash.select {|key, value| value == new_hash.values.max}.keys
end

p mode([1,2,3,3])         # => [3]
p mode([4.5, 0, 0])       # => [0]
p mode([1.5, -1, 1, 1.5]) # => [1.5]
p mode([1,1,2,2])         # => [1,2]
p mode([1,2,3])           # => [1,2,3], because all occur with equal frequency
p mode(["who", "what", "where", "who"]) # => ["who"]
# 4. Reflection
=begin
Which data structure did you and your pair decide to implement and why?
We decided to use a Hash to store the values because it made sense to store the value of the count along with each key.
Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?
Yes, our initial code actually followed our pseudocode very closely, and it worked.
What issues/successes did you run into when translating your pseudocode to code?
None.
What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
Initially we used a combination of each and select to itereate through the elements. In refactoring, we simplified the code without really using any new method besides #values.
=end


