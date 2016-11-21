// RELEASE 0 //
// I will make a function that accepts an array of 3 strings, and sorts those 3 strings by length, and then outputs the 
// longest string out of the 3. I will have a longest variable equal to zero and a variable for the longest word. we will iterate 
// the array at each value and have a conditional that states: if a word at current index is greater than longest variable and it is a string,
// set the longest variable equal to the array value's length, and set the longest word variable equal to the word at that index.
// then we would print out the return of the longest word variable.

var words = ["long phrase","longest phrase","longer phrase"];
var peeps = ["jeff", "jillian", "jacob", "jalapeno"]

function longestWord(array) {
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

//// release 1
//input: two objects
// output: true if they have one key/value pair that matches, false if otherwise
// function pseudocode:
//     SET objects_match = FALSE
//     FOR every key in object1:
//     IF the key is also in object2:
//         IF object1 key's value is equal to object2 key's value:
//             RETURN TRUE
//         ELSE go on to next key in object1
//     ELSE go on to next key in object1
  
//     return FALSE (assuming there's been no match to trigger TRUE)

var people1 = {name: "Steven", age: 54}
var people2 = {name: "Tamir", age: 54}
var cats1 = {type: "siamese", hair: "short"}
var cats2 = {type: "tabby", hair: "orangey"}

function share(obj1, obj2) {
	for (var key in obj1) {
		if (obj2.hasOwnProperty(key)) {
			if (obj2[key] == obj1[key]) {
				return true;
			}
		}
	}
	return false;
}

/// release 2
// input: number of strings to be generated
// output: array of random lengthed strings
// function:
//     set results to an empty array
//     set alphabet to a string of all letters
//     FOR (the number of strings desired) times:
//         set the number_of_letters to a random number
//         set current_str to an empty string
//         FOR (the number_of_letters) times:
//             SET random_letter_index to a random number between 0-25
//             Add alphabet[random_letter_index] to the current_str
//         When current_str is complete, add current_str to results array
//     When results array is finished, return it //

function wordGenerator(num) {
	var wordContainer = [];
	var wordStorer = "";
	var alpha = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmno[qrstuvwxyz";
		for (var i = 0; i < num; i++) {
			var randomWordCounter = Math.floor(Math.random() * ((10 - 1))) + 1;

			for (var x = 0; x < randomWordCounter; x++) {
				var randomLet = alpha[Math.floor(Math.random() * ((alpha.length -1) - 0)) + 0];
				wordStorer += randomLet;
			};
			wordContainer.push(wordStorer);
			wordStorer = "";
		};
		return wordContainer;
}


console.log(longestWord(words));
console.log(words);
console.log(longestWord(peeps));
console.log(share(people1, people2));
console.log(share(cats1, cats2));
console.log(wordGenerator(4));
console.log(wordGenerator(5));


