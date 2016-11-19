// PSEUDOCODE //
// To make a function that will reverse a string, 
// I would establish an incrementer at the length of the word, and as long 
// as that incrementer was greater than or equal to zero, 
// I would have it decrease the count by 1 and have it log to the console to 
// return the word reversed.
//  


var str = "erik b"

function reverse(word) {
	var x = "";
	for(var i = word.length - 1; i >= 0; i--){
		x += word[i];
	}
	return x;
}

//console.log(reverse("erik b!!"));

if (1 == 1) {
	console.log(reverse("supercalifragilisticexpialidocious"));
}