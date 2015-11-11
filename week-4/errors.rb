# Analyze the Errors

# I worked on this challenge by myself.
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

#"Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

#def cartman_hates(thing)
#  while true
#    puts "What's there to hate about #{thing}?"
#end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# errors.rb
# 2. What is the line number where the error occurs?
# It says 170, but technically, the error should be in line 17 because it's missing an 'end' there.
# 3. What is the type of error message?
# A syntax error.
# 4. What additional information does the interpreter provide about this type of error?
# "unexpected end-of-input, expecting keyword_end"
# 5. Where is the error in the code?
# It doesn't indicate specifically because the interpretor doesn't know where the missing end is supposed to go.
# 6. Why did the interpreter give you this error?
# Because an 'end' is missing, so the ruby interpreter interprets everything up until the next 'end' as being included in this method.

# --- error -------------------------------------------------------

#south_park

# 1. What is the line number where the error occurs?
# 35
# 2. What is the type of error message?
# NameError
# 3. What additional information does the interpreter provide about this type of error?
# Undefined local variable or method 'south_park'
# 4. Where is the error in the code?
# line 35
# 5. Why did the interpreter give you this error?
# Because we haven't defined 'south_park' yet and we're calling it without setting it equal to anything.

# --- error -------------------------------------------------------

#cartman()

# 1. What is the line number where the error occurs?
# 50
# 2. What is the type of error message?
# NoMethodError
# 3. What additional information does the interpreter provide about this type of error?
# undefined method 'cartman' for main:Object
# 4. Where is the error in the code?
# line 50
# 5. Why did the interpreter give you this error?
# Because we haven't yet defined this  method, and we're calling it already.

# --- error -------------------------------------------------------

#def cartmans_phrase
# puts "I'm not fat; I'm big-boned!"
#end

#cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# 65
# 2. What is the type of error message?
# ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# wrong number of arguments (1 for 0)
# 4. Where is the error in the code?
# in line 69, where we give an argument when the original method doesn't require one.
# 5. Why did the interpreter give you this error?
# because it doesn't know how to interpret the argument that wasn't asked for when defining the method.

# --- error -------------------------------------------------------

#def cartman_says(offensive_message)
#  puts offensive_message
#end

#cartman_says

# 1. What is the line number where the error occurs?
# 84
# 2. What is the type of error message?
# ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# wrong number of arguments (0 for 1)
# 4. Where is the error in the code?
# line 88, where we didn't provide an argument when the original method requires one.
# 5. Why did the interpreter give you this error?
# Because we didn't provide an argument where it was needed



# --- error -------------------------------------------------------

#def cartmans_lie(lie, name)
#  puts "#{lie}, #{name}!"
#end

#cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
# 105
# 2. What is the type of error message?
# ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# wrong number of arguments (1 for 2)
# 4. Where is the error in the code?
# When the method is called.
# 5. Why did the interpreter give you this error?
# Because we didn't provide all the necessary arguments for the method to work properly. It's missing the second argument 'name'.

# --- error -------------------------------------------------------

#5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
# 124
# 2. What is the type of error message?
# TypeError
# 3. What additional information does the interpreter provide about this type of error?
# String can't be coerced into Fixnum
# 4. Where is the error in the code?
# When the string argument was provided.
# 5. Why did the interpreter give you this error?
# Because the multiplier method takes the argument on the left and multiplies it by the value on the right. In this case, you cannot multiply a number by a string, although you can multiply a string by a number (in which case the places need to be switched).

# --- error -------------------------------------------------------

#amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
# 139
# 2. What is the type of error message?
# ZeroDivisionError
# 3. What additional information does the interpreter provide about this type of error?
# divided by 0
# 4. Where is the error in the code?
# When we attempted to divide 20 by 0.
# 5. Why did the interpreter give you this error?
# Because we tried to create a blackhole.

# --- error -------------------------------------------------------

#require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# 155
# 2. What is the type of error message?
# LoadError
# 3. What additional information does the interpreter provide about this type of error?
# in 'require_relative': cannot load such file
# 4. Where is the error in the code?
# error isn't in the code
# 5. Why did the interpreter give you this error?
# Because we are trying to link to a file that doesn't exist.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.
#Which error was the most difficult to read?
# I think because I was able to at a glance recognize the error in the code, that made comprehending the error code much easier. However, I can see that the unexpected end-of-input can give me a lot of difficulty if I had to sort through a lot of 'end' statements, especially because the line that's given is not accurate.
#How did you figure out what the issue with the error was?
# In the example, it was pretty easy to identify the missing 'end'.
#Were you able to determine why each error message happened based on the code?
# Yes
#When you encounter errors in your future code, what process will you follow to help you debug?
# I'll likely go straight to the line first to see if it's something obvious that I can address. Then I will look in the details in terms of the type of error, and then in the more detailed explanation if I still can't figure out what the problem is.