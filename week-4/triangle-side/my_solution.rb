# I worked on this challenge with: Calvin Lang.


# Your Solution Below

def valid_triangle?(a, b, c)
  if a.is_a?(Numeric) && b.is_a?(Numeric) && c.is_a?(Numeric) && a > 0 && b > 0 && c > 0
    if (a > b + c) || (b > a + c) || (c > a + b)
      false
    else
      true
    end
  end
end
