print "First name:"
firstname = gets.chomp
print "Middle name:"
middlename = gets.chomp
print "Last name:"
lastname = gets.chomp

puts "Hello #{firstname} #{middlename} #{lastname}!"

print "What's your favorite number? "
favnum = gets.chomp.to_i
puts "But don't you think #{favnum + 1} is a bigger, better number?"

#How do you define a local variable?
#By initiating it with a lower case letter or underscore
#How do you define a method?
#by beginning with a 'def' followed by the method name
#What is the difference between a local variable and a method?
#a local variable is a storage place for a single value, whereas a method stores a set of code that can be run whenever it is called.
#How do you run a ruby program from the command line?
#by typing in 'ruby filename.rb'
#How do you run an RSpec file from the command line?
#by typing in 'rspec filename.rb'
#What was confusing about this material? What made sense?
#I didn't encounter any confusion in this assignment.
#https://github.com/supermikol/phase-0/blob/master/week-4/address/my_solution.rb
#https://github.com/supermikol/phase-0/blob/master/week-4/math/my_solution.rb