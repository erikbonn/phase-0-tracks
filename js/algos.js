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
function translator(int) {
var num = int;
var array = [];
var text = "";
var alpha = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";

    for( var i=0; i < Math.floor(Math.random() * 10) + 1; i++ )
        array += alpha.charAt(Math.floor(Math.random() * alpha.length));	
    return array;

}



console.log(longestWord(phrases));
console.log(longestWord(cookies));
console.log(share(people1, people2));
console.log(share(dogs1, dogs2));

///// Couldn't get it to iterate 10 times, and ran out of time! I need to figure out how to take the array and apply the longest 
//     word generator function without recalling the translator method again, and since I couldn't get multiple words out of the 
///    translate function, The longest word method isn't really performing like it should since there is only 1 word each time.
// 10.times do {
// 	console.log(translator(4));
// 	console.log(array)
// 	console.log(longestWord(array))
// }
console.log(translator(4));
	console.log(longestWord(translator(4)));

console.log(translator(2));
	console.log(longestWord(translator(2)));

console.log(translator(6));
	console.log(longestWord(translator(6)));

console.log(translator(1));
	console.log(longestWord(translator(1)));

console.log(translator(5));
	console.log(longestWord(translator(5)));

console.log(translator(9));
	console.log(longestWord(translator(9)));

console.log(translator(10));
	console.log(longestWord(translator(4)));

console.log(translator(7));
	console.log(longestWord(translator(7)));

console.log(translator(8));
	console.log(longestWord(translator(8)));

console.log(translator(3));
	console.log(longestWord(translator(3)));




