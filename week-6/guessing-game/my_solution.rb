# Build a simple guessing game


# I worked on this challenge by myself.
# I spent 0.5 hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:
# 1. initialize a class requiring an argument 'answer'
# 2. Define an instance method called GuessingGame#guess which will take one argument, 'guess'
# 3. Define an instance variable '@solved' which is equal to 'false'
# 4. set a conditional statement, where if 'guess' is greater than 'answer', return :high and set 'solved' to false, if 'guess' is less than 'answer' then return :low and set '@solved' to false, and lastly, return :correct if 'guess' is equal to 'answer', and set '@solved' to true.
# 4. Define an instance method called GuessGame#solved? which returns '@solved'.

# Initial Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
    @solved = false
  end

  def guess(guess)
    @solved = false
    if guess == @answer
      @solved = true
      :correct
    else
      guess < @answer ? :low : :high
    end
  end

  def solved?
    @solved
  end
end

# Refactored Solution

# Reflection
# How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
# Instance variables hold information that are retained even when they are called multiple times. Instance methods can also access these instance variables to make changes to them.
# When should you use instance variables? What do they do for you?
# instance variables should be used when there is data that needs to be retained with the creation of a class instance. They mainly hold information that doesn't get reset with each call, and can be manipulated with as necessary.
# Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
# flow control was simple in this problem.
# Why do you think this code requires you to return symbols? What are the benefits of using symbols?
# Symbols are useful in this case because they are unique. No matter how many times the method returns or points to :correct, it's always going to be the same :correct. Meanwhile with strings, "correct" is always going to point to a new string that gets created everytime it is entered in the program. This means it's a waste of memory, and is processed more slowly.