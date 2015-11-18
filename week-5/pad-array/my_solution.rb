# Pad an Array

# I worked on this challenge with: Matt Oppenheimer.

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.


# 0. Pseudocode

# What is the input? Array, value, and an object
# What is the output? (i.e. What should the code return?) A single array
# What are the steps needed to solve the problem?
=begin
1. Define method
2. Determine whether array is is longer than minimum length, if so, return the original array
3. If not, append new elements to the array with the value until new array length is equal to minimum length
=end


# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
  if array.length >= min_size
    return array
  else
    for i in array.length...min_size
      array[i] = value
    end
  end
end

def pad(array, min_size, value = nil) #non-destructive
  new_array = [].concat(array)
  if new_array.length >= min_size
    return new_array
  else
    for i in new_array.length...min_size
      new_array[i] = value
    end
  end
end

# 3. Refactored Solution
def pad!(array, min_size, value = nil) #destructive
  return array if array.length >= min_size
  array[min_size-1] = nil
  array.collect!{|x|x.nil? ? value : x}
end

def pad(array, min_size, value = nil) #non-destructive
  new_array = array.dup
  return new_array if new_array.length >= min_size
  new_array[min_size-1] = nil
  new_array.collect!{|x|x.nil? ? value : x}
end

# 4. Reflection
=begin
Were you successful in breaking the problem down into small steps?
Not really, it was more of a process of experimentation to get to our final solution. Therefore, the pseudocode wasn't too helpful.
Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
It was relatively simple because the pseudocode was pretty general.
Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
For the destructive method, we completed the exercise without much difficulty and didn't run into any serious errors. There were a few syntax errors where we missed a character here and there. It was the destructive method that proved more difficult, because I wasn't aware that setting arrays equal to each other meant they were referencing the same object. As a result, manipulating our supposedly 'temporary' array influenced the original array. Finally I settled with concating the original array into this new array, setting them up into two separate objects as a result.
When you refactored, did you find any existing methods in Ruby to clean up your code?
Yes the duplicate method was a great substitution for accomplishing what we originally tried to do, which was creating a duplicate of the original array, as opposed to setting them equal to each other. I also went with a different approach and implemented iteration to fill in all the nil elements with the value after resizing the array.
How readable is your solution? Did you and your pair choose descriptive variable names?
I think the code is pretty self-explanatory. Not too difficult to parse through.
What is the difference between destructive and non-destructive methods in your own words?
Destructive methods will permanently change the array where the method was called on. Non-destructive methods will only run a block through the array, but will return the original array once done.
=end
