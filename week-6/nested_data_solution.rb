# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================

p array[1][1][2][0]

# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {:outer => {:inner => {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================

p hash[:outer][:inner]["almost"][3]

# ============================================================

# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================

p nested_data[:array][1][:hash]

# ============================================================
# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

#number_array.flatten!.map! {|x| x + 5}

#Refactoring
number_array.map! do |element|
  element.kind_of?(Array) ? element.map! {|inner| inner + 5} : element + 5
end

# Bonus:
startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

#startup_names.flatten!.map! {|word| word + "ly"}

#Refactoring
def add_ly(array)
  array.map! do |roots|
    roots.kind_of?(Array) ? add_ly(roots) : roots + "ly"
  end
end

add_ly(startup_names)
p startup_names

# What are some general rules you can apply to nested arrays?
# You can still iterate through them as long as you access the right array with the correct indexes
# What are some ways you can iterate over nested arrays?
# Using each or map.
# Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
# #kind_of? was helpful for recognizing when we iterate over an array, so that we can recursively access the array and apply the necessary changes.
