# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent 3 hours on this challenge.

# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #fill in the outline here
# Create an array with the 5 letters bingo
# Return a string with a randomly picked element from array, concantenated with a random integer from 1-100.

# Check the called column for the number called.
  #fill in the outline here
# Pick out the first char from a string generated from the method above
# Use a case conditional to determine which column to draw from (ex. B = 0, I = 1, N = 2, etc..)

# If the number is in the column, replace with an 'x'
  #fill in the outline here
  #iterate through each subarray, looking for the value in the column # from above in each one.
  #if return true, replace that value with X

# Display a column to the console
  #fill in the outline here
  #define a method #column
  #iterates through BingoBoard instance and prints the column value element within each subarray

# Display the board to the console (prettily)
  #fill in the outline here
  #define a method #board
  #iterate through method printing each subarray on separate columns
  #within each subarray, use '|' to separate each item

# Initial Solution

#OPTIONAL CHALLENGE: method that generates a nested array according to the rules B = 1-15, I = 16-30, N = 31-45, G = 46-60, O = 61-75
def create_board
  new_board = Array.new(5) {[rand(1..15), rand(16..30), rand(31..45), rand(46..60), rand(61..75)]}
  new_board[2][2] = " "
  return new_board
end

#draws random letter/number combination according to the rules B = 1-15, I = 16-30, N = 31-45, G = 46-60, O = 61-75
def call
  bingo = ["B", "I", "N", "G", "O"]
  rand_num = rand(0..4)
  p bingo[rand_num] + ((rand_num*15) + rand(1..15)).to_s
end

class BingoBoard
  def initialize(board = [])
    @bingo_board = board.empty? ? create_board : board
  end

  def check(string)
    case string[0]
    when "B"
      col = 0
    when "I"
      col = 1
    when "N"
      col = 2
    when "G"
      col = 3
    else
      col = 4
    end
    @bingo_board.each do |x|
      x[col] = 'X' if x[col].to_s == string[1..2]
    end
  end

  #Prints the column of values
  def column(col)
    @bingo_board.each {|x| puts x[col]}
  end

  def board
    puts "   B    I    N   G    O   "
    @bingo_board.each do |x|
      print "| "
      x.each {|a| print "#{a} | "}
      puts ""
      puts "---------------------------"
    end
  end
end

# Refactored Solution

#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

#Creates random board using rules given by Optional. THe numbers generated also follow those rules accordingly, rendering the old board useless.
new_game2 = BingoBoard.new #Generates new random board
new_game2.board #Prints board
new_game2.check(call) # checks if letter/number combination from argument (a method) matches any of the values on the board
new_game2.board

#Reflection
# How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
# Pseudocoding is getting better. Can't say it was very helpful though, but I'm learning to rely on it more.
# What are the benefits of using a class for this challenge?
# We can create duplicate instances without retyping the same code over and over again. Using this class, I can now create an infinite number of bingo boards, and run checks on it as many times as I want. Lays a good foundation for building the final game.
# How can you access coordinates in a nested array?
# By using multiple brackets, beginning with the first layer for the first bracket.
# What methods did you use to access and modify the array?
# I only used each in this case.
# Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?
# I didn't come across any new interesting methods that I could've used.
# How did you determine what should be an instance variable versus a local variable?
# An instance method was one that would be recalled even after a method was done running. Example of this was the bingo_board. Eventually down the road I may implement an instance variable holding all the bingo balls I've drawn.
# What do you feel is most improved in your refactored solution?
# With the exception of the case statement, everything else was in about one line, so I didn't see a need for refactoring.