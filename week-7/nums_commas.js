// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: David Diaz.

// Pseudocode
// Input: Number
// Output: String
// 1. Define a function that takes a number as an parameter
// 2. Convert number to array and reverse the array
// 3. Slice off 3 at a time and push it into a new array, add a comma
// 4. loop step three until array length is less than 4
// 5. reverse new array and then join it into a string
// 6. return new array


// Initial Solution
function separateComma(number) {
 var num_array = String(number).split("").reverse();
 var new_array = [];
 while (num_array.length > 3) {
   new_array = new_array.concat(num_array.splice(0,3), ",");
 }
  if (num_array.length > 0){
    new_array = new_array.concat(num_array);
  }
 return new_array.reverse().join("");
}


// // Refactored Solution


// Your Own Tests (OPTIONAL)
function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (separateComma(1000) === "1,000"),
  "The return string should be 1,000",
  "1. "
)

assert(
  (separateComma(10000) === "10,000"),
  "The return string should be 10,000",
  "2. "
)

assert(
  (separateComma(100000) === "100,000"),
  "The return string should be 100,000",
  "3. "
)


// Reflection
// What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
// No we used a similar approach to ruby, where we converted the number into an array, reversed it, and then manipulated into a new array. Aside from syntax errors, we generally had no problem with the same approach.
// What did you learn about iterating over arrays in JavaScript?
// It was pretty straightforward working with arrays in this challenge.
// What was different about solving this problem in JavaScript?
// We had to use splice instead of slice, because whereas slice was destructive in Ruby, it doesn't have the same effect in JS.
// What built-in methods did you find to incorporate in your refactored solution?
// Splice was definitely helpful, as well as concat (which works the same as in ruby).