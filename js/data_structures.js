var horseColor = ["blue", "green", "red", "yellow"];
var horseName = ["Jerry", "MrEd", "Silver", "Bolt"];
console.log(horseColor);
console.log(horseName);
horseColor.push("purple");
console.log(horseColor);
horseName.push("Seabiscuit");
console.log(horseName);
for (var i = 0; i < horseName.length && horseColor.length; i ++){
    console.log(horseName[i] + " " + horseColor[i]);
}
function Car(brand, model, preowned) {
    console.log("Our new car is:", this);
    this.brand = brand;
    this.model = model;
    this.preowned = preowned;
    this.revengine = function() { console.log("Vroooom!!");};
}
console.log("Let's build us a car!");
var firstCar = new Car("Chevy", "Silverado", false);
console.log(firstCar);
console.log("Rev the engine and listen to that baby purrrrrrr.");
firstCar.revengine();
for (var key in firstCar) {
    if (firstCar.hasOwnProperty(key)) {
        console.log(key + "->" + firstCar[key])
    }
}

var secondCar = new Car("Cadillac", "XLR", true);
console.log(secondCar);
console.log("Rev the engine and listen to that baby purrrrrrr.");
secondCar.revengine();
for (var key in secondCar) {
    if (secondCar.hasOwnProperty(key)) {
        console.log(key + "->" + secondCar[key])
    }
}

///// release 3: We looped through the keys and values of the firstcar and secondcar object using a for loop we found through research.
//    using a contstructer function to make a car is useful. It seems like you use a constructor when you need to add
//    methods and more things to it. If you just need something to store some items, you can use an object literal. 




