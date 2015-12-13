// Userstory:
// Create a new list
// Add the following items to your list
// Lemonade, qty: 2
// Tomatoes, qty: 3
// Onions, qty: 1
// Ice Cream, qty: 4
// Remove the Lemonade from your list
// Update the Ice Cream quantity to 1
// Print out your list (Is this readable and nice looking)?

// Pseudocode:
// 1. Create a constructor function that will create an empty object
// 2. Within the function are functions that will do the following:
// 3. Take a name and quantity of an item and add items to list. If item name already exists, will update with the value.
// 4. Take an item name and remove the item from list
// 5. Print out the list in an organized format.

//Initial Code

function capFirstLetter(string) {
  return string.charAt(0).toUpperCase() + string.slice(1);
};

var List = function() {
  this.item_list = {};
};

List.prototype.add = function(item_name, qty){
  if (this.item_list.hasOwnProperty(item_name)) {
    console.log("Item already in list. Count for", item_name, "updated from", this.item_list[item_name], "to", qty + ".");
  }
  this.item_list[item_name] = qty;
};

List.prototype.remove = function(item_name){
  delete this.item_list[item_name];
  console.log("Item \"" + capFirstLetter(item_name) + "\" removed from list.")
};

List.prototype.printList = function() {
  console.log("Items in your list:");
  for (var a in this.item_list) {
    console.log(capFirstLetter(a) + ":" + this.item_list[a]);
  };
};

//Driver Code:
var new_list = new List;
new_list.add("broccoli", 3);
new_list.add("broccoli", 4);
new_list.add("apples", 4);
new_list.add("oranges", 2);
new_list.add("eggs", 12);
new_list.add("cabbage", 9);
new_list.remove("cabbage");
new_list.printList();

// Reflection
// What concepts did you solidify in working on this challenge? (reviewing the passing of information, objects, constructors, etc.)
// I solidified my understanding of constructor functions, as well as how to manipulate the items in each instance.
// What was the most difficult part of this challenge?
// Getting the syntax correct. Translating from Ruby to JS code usually takes some getting used to.
// Did an array or object make more sense to use and why?
// Object made more sense because I needed the values to be paired together.