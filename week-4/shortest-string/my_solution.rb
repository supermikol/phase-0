# Shortest String

# I worked on this challenge by myself.

# shortest_string is a method that takes an array of strings as its input
# and returns the shortest string
#
# +list_of_words+ is an array of strings
# shortest_string(array) should return the shortest string in the +list_of_words+
#
# If +list_of_words+ is empty the method should return nil

#Your Solution Below
def compare_min(x,y)
  if x.length < y.length
    return x
  else
    return y
  end
end

def shortest_string(list_of_words)
  short = list_of_words[0]
    for i in 1..(list_of_words.length-1)
      short = compare_min(short, list_of_words[i])
    end
  return short
end
