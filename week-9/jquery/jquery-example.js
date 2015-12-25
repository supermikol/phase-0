// U3.W9:JQuery


// I worked on this challenge [by myself, with: Michael Du].
// This challenge took me [#] hours.

$(document).ready(function(){

//RELEASE 1:
  //link the image

//RELEASE 2:

  //Link this script and the jQuery library to the jQuery_example.html file and analyze what this code does.

var bodyElement = $('body');
bodyElement.css({'background-color': 'pink'});

//RELEASE 3:
  //Add code here to select elements of the DOM
var h1 = $('h1');

//RELEASE 4:
  // Add code here to modify the css and html of DOM elements
h1.css({color: 'red', border: '2px solid red', visibility: 'visible'});

$(".mascot h1").html("Chorus Frogs");

//RELEASE 5: Event Listener
  // Add the code for the event listener here
  $('img').on('mouseover', function(e){
    e.preventDefault()
    $(this).attr('src', 'http://www.californiaherps.com/noncal/misc/miscfrogs/images/pfferariumtc507.jpg');
    $(this).animate({height: "200px", width: "200px"})
  })

  $('img').on('mouseleave', function(e){
    e.preventDefault()
    $(this).attr('src', 'dbc_logo.png')
    $(this).animate({height: "40px", width: "240px"})
  })

//RELEASE 6: Experiment on your own

//Did it above in release 5.




})  // end of the document.ready function: do not remove or write DOM manipulation below this.

// What is jQuery?
//jQuery is a language that allows us to interact with html and css code, in addition to creating some cool effects while site is loaded in a page.
// What does jQuery do for you?
// It allows me to create the aforementioned effects in the websites I create.
// What did you learn about the DOM while working on this challenge?
// Nothing new about the DOM in particular.
