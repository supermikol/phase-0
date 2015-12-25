# OO Basics: Student


# I worked on this challenge with: Jonathan Huang.
# This challenge took me 3 hours.

# Pseudocode

# linear_search method:
# Iterate through each student
#   Check if first_name is equal to what we're looking for
#     Return index if first_name matches
# ELSE return -1

# Initial Solution

class Student
  attr_accessor :scores, :first_name

  def initialize(name, scores)   #Use named arguments!
    #your code here
    @first_name = name
    @scores = scores
  end

  def average
    @scores.inject(:+)/@scores.length
  end

  def letter_grade
    case self.average
      when 90..100
        return 'A'
      when 80...90
        return 'B'
      when 70...80
        return 'C'
      when 60...70
        return 'D'
    else
    return 'F'
    end
  end

end

def linear_search(array, name)
  array.each_with_index do |student, index|
    if student.first_name == name
      return index
    end
    return -1
  end
end

def binary_search(array, name)
  return bin_method(array, name, 0, array.length-1)
end

def bin_method(array, name, low, high)
  return -1 if high < low
  mid = (low + high)/2
  if array[mid].first_name == name
    return mid
  elsif array[mid].first_name > name
    return bin_method(array, name, low, mid-1)
  else
    return bin_method(array, name, mid+1, high)
  end
end

Alex = Student.new("Alex",[100, 100, 100, 0, 100])
Bob = Student.new("Bob", [90, 90, 90, 90, 90])
Charlie = Student.new("Charlie",[80, 80, 80, 80, 70])
Doug = Student.new("Doug", [90, 90, 80, 100, 70])
Edward = Student.new("Edward", [90, 95, 80, 75, 65])
Flanders = Student.new("Flanders", [90, 95, 80, 75, 65])
George = Student.new("George", [90, 95, 80, 75, 65])

students = [Alex, Bob, Charlie, Doug, Edward, Flanders, George]
# Refactored Solution

# DRIVER TESTS GO BELOW THIS LINE
# Initial Tests:

p students[0].first_name == "Alex"
p students[0].scores.length == 5
p students[0].scores[0] == students[0].scores[4]
p students[0].scores[3] == 0


# Additional Tests 1:

p students[0].average == 80
p students[0].letter_grade == 'B'

# # Additional Tests 2:

p linear_search(students, "Alex") == 0
p linear_search(students, "NOT A STUDENT") == -1

p binary_search(students, "Alex") == 0
p binary_search(students, "Bob") == 1
p binary_search(students, "Charlie") == 2
p binary_search(students, "Doug") == 3
p binary_search(students, "Edward") == 4
p binary_search(students, "Flanders") == 5
p binary_search(students, "George") == 6
p binary_search(students, "NOT A STUDENT") == -1


# Reflection
# What concepts did you review in this challenge?
The inject method, and writing recursive functions, which was an immense challenge
# What is still confusing to you about Ruby?
Writing clean recursive functions
# What are you going to study to get more prepared for Phase 1?
Finish up jquery codecademy, update my site, and look through my notes.