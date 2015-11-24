# Your Names
# 1)Dana Breen
# 2)Michael Du

# We spent [2] hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, order_quantity)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}

  raise ArgumentError.new("#{item_to_make} is not a valid input") unless library.has_key?(item_to_make)

  serving_size = library[item_to_make]
  serving_size_mod = order_quantity % serving_size

  puts "Calculations complete: Make #{order_quantity/serving_size} #{item_to_make}. "

  if serving_size_mod > 0
    puts "You have #{serving_size_mod} leftover ingredients. Suggested baking items:"
    reversed_library = Hash[library.to_a.reverse]
    reversed_library.each do |item, q|
      puts "#{serving_size_mod/q} #{item}" if serving_size_mod >= q
      serving_size_mod = serving_size_mod % q
    end
  end
end

serving_size_calc("pie", 48)
serving_size_calc("pie", 8)
serving_size_calc("cake", 5)
serving_size_calc("cake", 7)
serving_size_calc("cookie", 1)
serving_size_calc("cookie", 10)


#  Reflection
What did you learn about making code readable by working on this challenge?
I learned that a big part of the challenge is making sense of the original code. The programming part is the easy part, because it's not much different from creating a new program from scratch.
Did you learn any new methods? What did you learn about them?
Didn't use any new methods for this challenge.
What did you learn about accessing data in hashes?
That some people (coder of the original code) can have no idea what they're doing when accessing codes..it certainly took us some time to figure out that what the person was doing was nonsensical.
What concepts were solidified when working through this challenge?
Manipulating and accesssing values in a hash.