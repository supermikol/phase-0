# Factorial

# I worked on this challenge with: Thomas Huang.


# Your Solution Below
def factorial(number)
  #Takes a single number, as an input
  #if number is 0, return 1, else continue
  #Initialize a new variable, factorial, equal to number
  #multiply factorial by all integers between 1 and number (excluding number)
  #Return factorial
  if number == 0
    return 1
  else
    factor = number
    for i in 1...number
      factor = factor * i
    end
    return factor
  end
end
