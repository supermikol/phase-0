# Die Class 1: Numeric

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input: Initiating a new instance of a class Die, along with several instance methods.
# Output: The appropriate results for each method
# Steps:
=begin
1. Define the class that initializes with a single integer parameter that will dictate the sides of a dice.
2. Define specific methods.
3. For the sides class, there is a reader attribute for the 'sides' instance variable
4. The roll method should utilize #rand() to return a number between 1 to 6
=end


# 1. Initial Solution
class Die
  def initialize(sides)
    raise ArgumentError, "Number needs to be greater than 0" if sides < 1
    @sides = sides
  end
  attr_reader :sides

  def roll
    rand(@sides)+1
  end
end

# 3. Refactored Solution


# 4. Reflection
=begin
What is an ArgumentError and why would you use one?
An argument error is typically raised when the wrong number of arguments is used. In this case, inputting zero is not exactly a wrong number of argument, so I had to explicitly raise the error within a conditional..
What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
'raise' was a new method, and I hadn't used rand() before even though I understood what it did. This challenge wasn't particularly hard because codecademy covered a lot on classes, so this is quite rudimentary in comparison.
What is a Ruby class?
A ruby class is an object by itself, but it is an object that allows for the creation of other objects that follow the same rules. For instance, the Array class allows us to create arrays, with a predefined set of methods and rules guiding it's behavior.
Why would you use a Ruby class?
Because there are some objects we want to create with certain behavior that is replicated. It may be an array that functions slightly differently, and so we may want to create an entirely new class for an object that behaves similar to an Array, but with the modifications we want.
What is the difference between a local variable and an instance variable?
A local variable is a variable that is only created and accessed within the scope of its method, so that it can't be shared with other methods. That also means it's not permanent and will be gone after a method is done running.
An instance variable is a created when an instance of a class is created, and follows that instance around through any method that is called within the class. It also retains any changes that any methods has enacted on it, so it's malleable data so to speak.
Where can an instance variable be used?
An instance variable can be used in any methods tied to that class.
=end

