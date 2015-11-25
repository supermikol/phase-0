#Attr Methods

# I worked on this challenge by myself.

# I spent 0.5 hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:

class NameData
  attr_reader :name
  def initialize
    @name = "Michael Du"
  end
end

class Greetings
  def initialize
    @name = NameData.new
  end

  def hello
    puts "Hello #{@name.name}! How wonderful to see you today."
  end

end
test = Greetings.new
test.hello


# Reflection
# Release 1
# What are these methods doing?
# The methods in release_1 range from resetting the instance variable values, to simply returning the values.
# How are they modifying or returning the value of instance variables?
# Using methods that directly access the instance variables.
# Release 2
# What changed between the last release and this release?
# An attr_reader was established for :age
# What was replaced?
# The attr_reader rendered the #what_is_age method obsolete
# Is this code simpler than the last?
# Yes. I'll always take one line over defining an entire method.
# Release 3
# What changed between the last release and this release?
# Addition of attr_writer
# What was replaced?
# This time, #change_my_age was also rendered obsolete by the attr_writer method.
# Is this code simpler than the last?
# Yes
# Release 6
# What is a reader method?
# A reader method replaces an entire method definition meant to allow the programmer to read/access an instance variable.
# What is a writer method?
# A writer method replaces an entire method definition meant to allow the programmer to reset the value of an instance variable.
# What do the attr methods do for you?
#   They remove the redundancy of having to set a method that access the value of an instance variable, and/or to write a new value to an instance variable.
# Should you always use an accessor to cover your bases? Why or why not?
# Not necessarily, because there are some cases where an instance variable value should be kept private, such as passwords, and also cases where instance variables should not be directly accessible/redefined by the user.
# What is confusing to you about these methods?
# Learned it through codecademy, so it wasn't too confusing to start with.