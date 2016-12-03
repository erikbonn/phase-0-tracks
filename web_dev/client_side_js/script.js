console.log("IT IS ALIVE!!!");

function addBlueBorder(event) {
  console.log("You just clicked! this is the event:");
  console.log(event);
  event.target.style.borderBottom = "5px solid blue";
}

var photo = document.getElementById("lizard-photo");
var word = document.getElementById("about-my-pet");
photo.addEventListener("click", addBlueBorder);
word.addEventListener("click", addBlueBorder);