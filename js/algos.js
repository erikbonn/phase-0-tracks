//// RELEASE 0 ////
// I need to make a function that accepts an array of 3 strings, and sorts those 3 strings by length, and then outputs the 
// longest string out of the 3. I will have a longest variable equal to zero and a variable for the longest word. we will iterate 
// the array at each value and have a conditional that states: if word at current index is greater than longest variable and it is a string,
// set the longest variable equal to the array value's length, and set the longest word variable equal to the word at that index.
// then we would print out the return of the longest word variable.

var phrases = ["long phrase","longest phrase","longer phrase"];

var cookies = ["sugar", "snickerdoodle", "chocolate chip", "rasberry oatmeal raisin"]


function longestWord(array) {
    // return the longest string in the array
    var longest = 0;
    var longestWord = "";
    for (var i = 0; i < array.length; i++) {
        if (array[i].length > longest && typeof array[i] ==="string") {
        longest = array[i].length;
        longestWord = array[i];
        }
    }
    return longestWord;
}

/// RELEASE 1 ///
// sample pseudocode for checking whether two objects have a match
/*
input: two objects
output: true if they have one key/value pair that matches, false if otherwise
function pseudocode:
    SET objects_match = FALSE
    FOR every key in object1:
    IF the key is also in object2:
        IF object1 key's value is equal to object2 key's value:
            RETURN TRUE
        ELSE go on to next key in object1
    ELSE go on to next key in object1
  
    return FALSE (assuming there's been no match to trigger TRUE)
*/
var people1 = {name: "Steven", age: 54}
var people2 = {name: "Tamir", age: 54}
var dogs1 = {type: "pug", hair: "long"}
var dogs2 = {type: "english bulldog", hair: "curly"}

function share(obj1, obj2) {
	for (var key in obj1) {
    		if (obj2.hasOwnProperty(key)) {
     			if (obj2[key] === obj1[key]) {
    				return true;
    				} 
     			}
  			}
    return false;
} 

/// RELEASE 2 ///
////  I figured out how to generate a random word of the length of the integer given in the argument, but I couldn't figure out 
//    how to make that many words with randomly generated lengths. 

// sample pseudocode for generating an array of random length strings
//
// input: number of strings to generate
// output: array of random length strings
// function pseudocode:
//     SET results to an empty array
//     SET alphabet to a string of all letters
//     FOR (the number of strings desired) times:
//         SET the number_of_letters to a random number
//         SET current_str to an empty string
//         FOR (the number_of_letters) times:
//             SET random_letter_index to a random number between 0-25
//             Add alphabet[random_letter_index] to the current_str
//         When current_str is complete, add current_str to results array
//     When results array is finished, return it //

function translator(num) {
var wordBox = [];
var wordStore = "";
var alpha = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";

	for (var i = 0; i < num; i++) {
		var randomWordCounter = Math.floor(Math.random() * ((10 - 1))) + 1;

		for(var t = 0; t < randomWordCounter; t++) {
			var randLet = alpha[Math.floor(Math.random() * ((alpha.length - 1) - 0)) + 0];
			wordStore += randLet;
		  };
		  wordBox.push(wordStore);
		  wordStore = "";
		};

		return wordBox;
	}


   



   //  		for( var i=0; i < Math.floor(Math.random() * 10) + 1; i++ ) {
   //      		text += alpha.charAt(Math.floor(Math.random() * alpha.length));	
   //  			return text;
   //  			}
			// }




console.log(longestWord(phrases));
console.log(longestWord(cookies));
console.log(share(people1, people2));
console.log(share(dogs1, dogs2));
console.log(translator(4));
///// Couldn't get it to iterate 10 times, and ran out of time! I need to figure out how to take the array and apply the longest 
//     word generator function without recalling the translator method again, and since I couldn't get multiple words out of the 
///    translate function, The longest word method isn't really performing like it should since there is only 1 word each time.
// 10.times do {
// 	console.log(translator(4));
// 	console.log(array)
// 	console.log(longestWord(array))
// }
// console.log(translator(4));
// 	console.log(longestWord(translator(4)));

// console.log(translator(2));
// 	console.log(longestWord(translator(2)));

// console.log(translator(6));
// 	console.log(longestWord(translator(6)));

// console.log(translator(1));
// 	console.log(longestWord(translator(1)));

// console.log(translator(5));
// 	console.log(longestWord(translator(5)));

// console.log(translator(9));
// 	console.log(longestWord(translator(9)));

// console.log(translator(10));
// 	console.log(longestWord(translator(4)));

// console.log(translator(7));
// 	console.log(longestWord(translator(7)));

// console.log(translator(8));
// 	console.log(longestWord(translator(8)));

// console.log(translator(3));
// 	console.log(longestWord(translator(3)));




