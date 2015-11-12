# Longest String

# I worked on this challenge by myself.

# longest_string is a method that takes an array of strings as its input
# and returns the longest string
#
# +list_of_words+ is an array of strings
# longest_string(list_of_words) should return the longest string in +list_of_words+
#
# If +list_of_words+ is empty the method should return nil


# Your Solution Below

def compare_max(x,y)
  if x.length > y.length
    return x
  else
    return y
  end
end

def longest_string(list_of_words)
  long = list_of_words[0]
    for i in 1..(list_of_words.length-1)
      long = compare_max(long, list_of_words[i])
    end
  return long
end
