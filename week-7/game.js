// Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:You're a squirrel on a magical bush where acorns grow and magically replenish itself. However, you have a limited number of steps you can take before the Acorn God finds you and banishes you to central park in winter (which happens to be very cold).
// Overall mission:You begin in the center of a bush arranged in a 3x2 space. There is an acorn on one of the spaces, except you don't know which one, so you must go explore. Everytime you grab an acorn, another one will reappear on one of the other spaces.
// Goals: Grab as many acorns as you can in 20 steps!
// Characters: squirrel
// Objects: squirrel and magic acorn
// Functions: climbUp, climbDown, climbLeft, climbRight

// Pseudocode
//Create an object called 'squirrel', whose default position is (1,0) in cartesian coordinates (defined by properties). ALso have a property indicating how many acorns it has in its possession (default of 0). Also have a property called 'turns' which will default at 20. When it runs to 0, the move function will no longer work.
//define function(methods), that begins with a while loop, with the condition being 'turns' is greater than 0. The function is called 'move' for squirrel, which allows it to move. 'move' will take an argument "climbUp, climbDown, climbLeft, climbRight". Each one will move it one space accordingly.
//After every move, the program will check if the position of squirrel is the same as that of the acorn. If it is, acorn count will increase by one and acorn's position will reset to one of the three branches.
//After every move, the counter 'turns' will decrease by one.
//Check if counter is 0, and if it is, print "Game is over, you have XX acorns!"

// Initial Code
var squirrel = {
  posX: 1,
  posY: 0,
  acorns: 0,
  turns: 20,

  move: function(direction) {
    if (this.turns > 0) {
      switch (direction) {
        case 'up':
          this.posY += 1
          break;
        case 'down':
          this.posY -= 1
          break;
        case 'left':
          this.posX -= 1
          break;
        case 'right':
          this.posX += 1
          break;
      }
      console.log("You are at " + this.posX + ", " + this.posY);
      if (this.posX === acorn.posX && this.posY === acorn.posY) {
        console.log("You found an acorn!");
        this.acorns += 1;
        acorn.posY = Math.round(Math.random());
        acorn.posX = Math.floor(Math.random()*3);
      }
      squirrel.turns -= 1;
      console.log("You have " + this.turns + " turns left," + " with a total of " + this.acorns + " acorns collected.");
      if (this.posX > 2 || this.posY > 1 || this.posX < 0 || this.posY < 0) {
        console.log("You're outside the bush! Find your way back!");
      }
    }
    else {
      console.log("You are out of turns! You collected a grand total of " + this.acorns + " acorns!")
    }
  }
}

var acorn = {
  posY: Math.round(Math.random()),
  posX: Math.floor(Math.random()*3)
}
console.log(squirrel)
console.log(acorn)
squirrel.move('right');
squirrel.move('up');
squirrel.move('left');
squirrel.move('down');
squirrel.move('left');
squirrel.move('up');
squirrel.move('right');
squirrel.move('right');
squirrel.move('down');
squirrel.move('left');
squirrel.move('left');
squirrel.move('up');
squirrel.move('right');
squirrel.move('down');
squirrel.move('right');
squirrel.move('up');
squirrel.move('left');
squirrel.move('down');
squirrel.move('left');
squirrel.move('up');
squirrel.move('right');
console.log(squirrel)
// Refactored Code

 //Check out my HTML version! http://supermikol.github.io/squirrel.html


// Reflection
//What was the most difficult part of this challenge?
// One difficulty was planning everything out so that all those variables are being manipulated and the conditions are being checked when a single function is called. However, the hardest part was figuring out how to get everything to work on HTML.
// // What did you learn about creating objects and functions that interact with one another?
// I learned that as long as I keep good track of my variables, it's quite easy for variables to interact with one another, even if a function is embedded within one object and not another.
// // Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
// I didn't really know where to start in terms of refactoring. My program is pretty DRY with the exception of the driver code.
// // How can you access and manipulate properties of objects?
// By either using the dot notation or the bracket notation. For this program, I mainly used the dot notation because it was easier to type.
//