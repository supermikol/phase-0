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
#What was your process for breaking the problem down? What different approaches did you consider?
#I deliberated for a while of how I would intersperse commas (new vocabulary!) without turning it into an array. In fact, after my initial solution above, I tried refactoring by working with a string, but it just turned into a mess, so I stuck with my original answer. The thought process was somewhere along the lines of turning it into an array, so that I could manipulate each element(digit) by sending one element at a time into a new array, followed by a comma in between every 3 appends. Then came dealing with the extra digits in the front when the total digits were not evenly divisible by 3. Last part was joining them all together.
#Was your pseudocode effective in helping you build a successful initial solution?
#Not really, because my pseudocode oversimplified certain things and actually created more errors for me to deal with. It wasn't until the process of refining the code and constantly testing out results where I worked out the final answer.
#What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?
#I literally scrolled through the enumerable page trying to envision how I might utilize each method to work out an answer. In the end #each_slice was the closest I came to applying, but then I found out that interspersing commas between arrays within an array required defining a separate method, so it didn't seem practical. Eventually i just stuck with my intial approach which was to append elements one at a time
#How did you initially iterate through the data structure?
#By combining  a 'for' loop with an if statement (which came in handy for the commas)
#Do you feel your refactored solution is more readable than your initial solution? Why?
#I don't have a refactored solution.. :-(