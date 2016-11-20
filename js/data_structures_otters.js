var horseColor = ["pink", "green", "red", "yellow"];
var horseName = ["Frank", "MrEd", "TheGatekeeper", "Jeff"];
console.log(horseColor);
console.log(horseName);
horseColor.push("purple");
console.log(horseColor);
horseName.push("Seabiscuit");
console.log(horseName);

for (var i = 0; i < horseName.length && horseColor.length; i ++){
    console.log(horseName[i] + " " + horseColor[i]);
}

for (var i = 0; i < horseColor.length; i++){
    console.log(horseColor[i]);
}


function Car(make, model, hasFourwheelDrive) {
	console.log("Our new car is:", this);
    this.make = make;
    this.model = model;
	this.hasFourwheelDrive = hasFourwheelDrive;
	this.offRoads = function() {
		if (this.hasFourwheelDrive) {
			console.log("VRROOOOMMM up the mountain!");
		} else {
			console.log("I'll stick to the road...");
		}
	}
};

console.log("Let's make a car!");
var firstCar = new Car("Chevy", "Silverado", true);
console.log(firstCar.make);
console.log(firstCar.model);
console.log(firstCar.hasFourwheelDrive);
console.log("Does it have 4-wheel drive? see what happens if it does!");
firstCar.offRoads();

console.log("Let's make a car!");
var secondCar = new Car("Lamborghini", "Murcielago", false);
console.log(secondCar.make);
console.log(secondCar.model);
console.log(secondCar.hasFourwheelDrive);
console.log("Does it have 4-wheel drive? see what happens if it does!");
secondCar.offRoads();

/// release 3
var car = {make: 'Ford', model: "f-250", hasFourwheelDrive: true};

// tried to loop through the keys and values of the car object. 
for (var key in car) {
    if (car.hasOwnProperty(key)) {
        console.log(key + "->" + car[key]);
    }
}
