# Die Class 2: Arbitrary Symbols


# I worked on this challenge by myself.
# I spent 0.5 hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:
# 1.Initialize the Die class by taking in an array.
# 2.Within Initialize, raise an argument error if the array is empty
# 3.Assign the size of labels to instance method #sides
# 4.When Die#roll is called, return a random value from the array when roll is called, by calling a random index on the array.

# Initial Solution

class Die
  def initialize(labels)
    raise ArgumentError if labels.empty?
    @labels = labels
  end

  def sides
    @labels.length
  end

  def roll
    @labels[rand(self.sides)]
  end
end

# Refactored Solution
# Can this get any shorter?

# Reflection
# What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
#In this one I couldn't use attr_reader because the method #sides didn't exactly call up the argument. This helped me understand why there is still a need to define a reader method sometimes. Everything else was mostly similar.
# What does this exercise teach you about making code that is easily changeable or modifiable?
# Simple codes call for simple fixes. It was real quick work revising the old Die class to fit this one.
# What new methods did you learn when working on this challenge, if any?
#I didn't use anything new for this one.
# What concepts about classes were you able to solidify in this challenge?
# defining a reader method in this case made sense. I had previously believed that the attr_reader should've made defining a reader method obsolete