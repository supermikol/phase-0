# Class Warfare, Validate a Credit Card Number

# I worked on this challenge with Calvin Lang.
# I spent 1 hours on this challenge.

# Pseudocode

# Input: Credit card number (16-digits) with spaces
# Output: Boolean (True/False)
# Steps:
=begin
1. Define initialize that takes a string
2. Convert string into array, and remove any empty spaces
3. Raise argument error if array length is not equal to 16
4. Define check_card method
5. If the array position is even, multiply it by two
6. Rejoin array, and resplit, to account for two digit numbers
7. Sum up all the elements, and divide by 10. If remainder = 0, then card is valid
=end

# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

class CreditCard
  def initialize(card)
    @card = card.to_s.split('').delete_if {|x| x == ' '}
    raise ArgumentError if @card.length != 16
  end

  def check_card
    @step_1 = @card.map.with_index do |num, position|
      if position.even?
        num = num.to_i * 2
      else
        num.to_i
      end
    end
    @step_2 = @step_1.join().split("").map(&:to_i)
    @total = @step_2.inject(:+)
    return true if @total % 10 == 0
    return false if @total % 10 != 0
  end
end

# Refactored Solution
class CreditCard
  def initialize(card)
    @card = card.to_s.split('').delete_if {|x| x == ' '}
    raise ArgumentError if @card.length != 16
  end

  def check_card
    temp = @card.map.with_index {|num ,position| position.even? ? num = num.to_i * 2 : num.to_i}
    total = temp.join().split("").map(&:to_i).inject(:+)
    total % 10 == 0 ? true : false
  end
end

# Reflection
# What was the most difficult part of this challenge for you and your pair?
# We had a pretty good logical solution in mind, so the hard part was finding which methods existed that created what we envisioned.
# What new methods did you find to help you when you refactored?
# #delete_if was a helpful method
# What concepts or learnings were you able to solidify in this challenge?
# Chaining enumerable methods with each other. It is similar to creating an enumerator, which helped reinforce a lot of ideas I was struggling with last week.