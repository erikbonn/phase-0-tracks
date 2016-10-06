// PSEUDOCODE //
// To make a function that will reverse a string, 
// I would establish an incrementer at the length of the word, and as long 
// as that incrementer was greater than or equal to zero, 
// I would have it decrease the count by 1 and have it log to the console to 
// return the word reversed.
//  

function reverseWord(word) {
	var o = '';
	for(var i = word.length - 1; i >= 0; i--){
		o += word[i];
	}
	return o;
}
// reverseWord("pepper");

if (1 == 1) {
	console.log(reverseWord("bungaloo")
		)
}



