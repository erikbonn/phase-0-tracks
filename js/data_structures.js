var horseColor = ["blue", "green", "red", "yellow"];
var horseName = ["Jerry", "MrEd", "Silver", "Bolt"];
console.log(horseColor);
console.log(horseName);
horseColor.push("purple");
console.log(horseColor);
horseName.push("Seabiscuit");
console.log(horseName);

var horses = {horseName: 'horseColor'};
console.log(horses);

for (var i = 0; i < horseName.length && horseColor.length; i ++){
	console.log(horseName[i] + " " + horseColor[i]);
}
