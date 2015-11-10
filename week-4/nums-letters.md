#####What does puts do?
puts prints the output to the console with a new line, but without returning the value, instead returning 'nil'.
#####What is an integer? What is a float?
An integer is essentially a whole number without decimal points or fractions. A float is a number with decimals.
#####What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?
The difference between float and integer division is that a float division will return an accurate result with decimal points, but with integer division, ruby will return an integer that is rounded down.
The explanation for this is that integers are much more manageable in the programming world; for instance, we will usually be concerned with the fact that 9 dollars will afford us 2 $4 coffees, not 2.25 (because we can't buy a quarter cup with $1). In case we are concerned with the decimal points, we also have a choice to convert our numbers into floats to manage that, as is often the case in academia.

```ruby
p 365 * 24 #returns and displays the number of hours in a year ==>8760
p ((10 * 365) + 2) * 24 * 60 #returns and displays the number of minutes in a decade, including two leap days. ==>5258880
```