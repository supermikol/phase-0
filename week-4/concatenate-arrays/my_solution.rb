# Concatenate Two Arrays

# I worked on this challenge by myself.


# Your Solution Below

def array_concat(array_1, array_2)
  newarray = Array.new
  for i in 0..(array_1.length-1)
    newarray[i] = array_1[i]
  end
  for j in 0..(array_2.length-1)
    newarray[array_1.length+j] = array_2[j]
  end
  return newarray
end
