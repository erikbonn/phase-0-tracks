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

console.log(longestWord(phrases));
console.log(longestWord(cookies));


