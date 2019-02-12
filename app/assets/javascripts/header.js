/*function currencyChanged(){
	var dropbtn = document.getElementById("dropbtn");
	var secondOption = document.getElementById("secondOption");
	var original = dropbtn.className;
	dropbtn.className = secondOption.className;
	secondOption.className = original;
}
function setSecondCurrency(){
	var dropbtn = document.getElementById("dropbtn");
	var secondOption = document.getElementById("secondOption");
	if (dropbtn.className === "britishGBP"){
		secondOption.className = "polishPLN";
	}
	else if(dropbtn.className === "polishPLN"){
		secondOption.className = "britishGBP";
	}
}*/
function setCurrency(){
	var dropbtn = document.getElementById("dropbtn");
	if (dropbtn.className === "britishGBP"){
		dropbtn.className = "polishPLN";
	}
	else if(dropbtn.className === "polishPLN"){
		dropbtn.className = "britishGBP";
	}
}