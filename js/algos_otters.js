// RELEASE 0 //
// I will make a function that accepts an array of 3 strings, and sorts those 3 strings by length, and then outputs the 
// longest string out of the 3. I will have a longest variable equal to zero and a variable for the longest word. we will iterate 
// the array at each value and have a conditional that states: if a word at current index is greater than longest variable and it is a string,
// set the longest variable equal to the array value's length, and set the longest word variable equal to the word at that index.
// then we would print out the return of the longest word variable.

var words = ["long phrase","longest phrase","longer phrase"];
var peeps = ["jeff", "jillian", "jacob", "jalapeno"]

function longestWord(array) {
	longest = 0;
	longestword = "";
	for (var i = 0; i < array.length; i++) {
		if (array[i].length > longest && typeof array[i] =="string") {
			longest = array[i].length;
			longestword[i] = array[i];
		}
	}
	return longestword;
}

console.log(longestWord(words));
console.log(words);
console.log(longestWord(peeps));