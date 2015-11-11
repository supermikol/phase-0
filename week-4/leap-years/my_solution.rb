# Leap Years

# I worked on this challenge with: Calvin Lang.


# Your Solution Below

def leap_year?(year)
  if year.is_a? Numeric
    if year % 4 == 0
      if year % 100 == 0
        if year % 400 == 0
          true
        else
          false
        end
      else
        true
      end
    else
      false
    end
  end
end
