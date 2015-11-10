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

####Defining Variables Challenge:
https://github.com/supermikol/phase-0/blob/master/week-4/defining-variables.rb
####Simple String Challenge:
https://github.com/supermikol/phase-0/blob/master/week-4/simple-string.rb
####Basic Math Challenge:
https://github.com/supermikol/phase-0/blob/master/week-4/basic-math.rb

####How does Ruby handle addition, subtraction, multiplication, and division of numbers?
Not quite sure what this question is asking for...I don't think Ruby handles arithmetic any differently from normal. Did I miss out on something?
####What is the difference between integers and floats?
Integers are whole numbers, while floats are numbers with decimal points.
####What is the difference between integer and float division?
Integer division, as in when you divide two whole numbers, will return an answer rounded down to a whole number. Float division will return a precise decimal point answer.
####What are strings? Why and when would you use them?
Strings are essentially strings of characters (letters, numbers, and symbols) that form words and sentences. They are used when we need to manipulate words and sentences, or to preserve something as a character rather than a number. (for example once '12' is defined as a string, ruby will prevent the program from treating it as a number in case we perform any arithmetic functions on it.)
####What are local variables? Why and when would you use them?
Local variables are variables that begin with a letter or underscore. They are stored and accessible locally, meaning they can only be accessed with a method if they were defined within a method, or be accessed within a loop when defined within a loop. They are useful for when variables are required only for a limited scope, such as when we define 'i' during a loop.
####How was this challenge? Did you get a good review of some of the basics?
I thought it was a bit too simple given how much we had to learn in the codecademy course. I would have moved a bit quicker if it were up to me.