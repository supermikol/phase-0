// JavaScript Olympics

// I paired with Yi Lu.

// This challenge took me 1.5 hours.


// Warm Up

// Bulk Up

var athlete1 = {
  name: "kobe bryant",
  event: "basketball"
};

var athlete2 = {
  name: "eli manning",
  event: "football"
};

var athlete3 = {
  name: "michael phelps",
  event: "swimming"
};

var athleteArray = [athlete1, athlete2, athlete3];

//    athleteArray[1].win = "hello"

function won(array) {
 for (var i = 0; i < array.length; i++) {
    array[i].win = function () {
      console.log(this.name + " won " + this.event);
    }
 }

}

won(athleteArray)

console.log(athleteArray[0].name)
athleteArray[0].win()
athleteArray[1].win()
athleteArray[2].win()
// Jumble your words
function reverseString(string) {
 return string.split("").reverse().join("")
}

console.log(reverseString("abcdef"))

// 2,4,6,8
// function returnEvens(array) {
//   var newArray = [];
//   for (var i = 0; i < array.length; i++) {
//     if (array[i] % 2 === 0) {
//       newArray.push(array[i]);
//     }
//   }
//   return newArray;

// }
function returnEvens(array) {
  return array.filter(function evens(value) {
    return value % 2 === 0;
  });
}

console.log(returnEvens([1,2,3,4,5,6,7,8,9,10]))

// "We built this city"
function Athlete(name, age, sport, quote) {
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
}

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)

// Reflection
// What JavaScript knowledge did you solidify in this challenge?
// This challenge helped me learn how to iterate through an array without the #each method in ruby.
// What are constructor functions?
// Constructor functions are similar to classes in Ruby. They basically allow us to create objects that have properties we define.
// How are constructors different from Ruby classes (in your research)?
// The difference is that any function in javascript can be a constructor by simply creating a variable with 'new'.