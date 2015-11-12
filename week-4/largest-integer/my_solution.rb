# Largest Integer

# I worked on this challenge by myself.

# largest_integer is a method that takes an array of integers as its input
# and returns the largest integer in the array
#
# +list_of_nums+ is an array of integers
# largest_integer(list_of_nums) should return the largest integer in the +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below

def compare_max(x,y)
  if x > y
    return x
  else
    return y
  end
end

def largest_integer(list_of_nums)
  big = list_of_nums[0]
    for i in 1..(list_of_nums.length-1)
      big = compare_max(big, list_of_nums[i])
    end
  return big
end
