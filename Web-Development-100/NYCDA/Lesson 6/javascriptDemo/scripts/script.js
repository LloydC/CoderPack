//console.log("Hello World");

//var myArr = ["Snoopy","Charlie Brown","Patty","Violet"];
//var snoopyPosition = myArr.indexOf("Snoopy");

//alert(snoopyPosition)

//console.log(myArr[snoopyPosition]);//

//Ex1

var first_name = ["Lloyd", "Daniel", "Valerie"]
var last_name = ["Chambrier", "Michelangelo", "Stuart"]


function addName(last_name){

	return first_name +" "+last_name;
}

alert(addName("Stuart"));

//Ex 2

function noArgument(){

	return 2+2;
}

console.log(noArgument());


var answer = prompt("Pick a door 1,2 or 3?")


function checkDoor(userAnswer)
{
	if (userAnswer == 1){
		alert("you've won a prize")
	} else if (userAnswer == 2){
		alert("sorry you lost")
	} else if (userAnswer == 3){
alert("sorry maybe next time")
}
}

checkDoor(answer)


/*function myFunction() {
  document.getElementById("demo").innerHTML = Date();
}*/

//function bgChange(bg) {
  //  document.body.style.background = bg;
//}