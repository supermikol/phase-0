// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.
var abc = "my first variable"
console.log(abc)
console.log(abc)

// Favorite food
//var favorite_food = prompt("What's your favorite food?");
console.log("Hey, that's my favorite too!");

// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board
//Triangle
pound = "#"
for (i = 0; i < 6; i++) {
  console.log(pound);
  pound += "#"
};

// FizzBuzz
for (i = 1; i <= 100; i++) {
  if (i % 3 == 0 && i % 5 == 0) console.log("FizzBuzz");
  else if (i % 3 == 0) console.log("Fizz");
  else if (i % 5 == 0) console.log("Buzz");
  else console.log(i);
};

// Functions

// Complete the `minimum` exercise.
function min(a, b) {
  if (a > b) return b;
  else if (b > a) return a;
  else return null;
}


// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = {
  name: "Michael Du",
  age: 28,
  favorite_food: ["Pho", "Sushi", "Cheeseburger"],
  quirk: "Loves puzzle games"
};