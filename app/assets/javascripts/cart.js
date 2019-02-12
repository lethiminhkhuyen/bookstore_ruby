function SelectElement(){    
    var delOpt = document.getElementById("deliveryMenu");
    var delValue = document.getElementById("deliveryCost");
    var totalValue = document.getElementById("actualValue");
    var subTotal = document.getElementById("subTotal").innerHTML;
    var price = Number(subTotal.replace(/[^0-9.-]+/g,""))
    var selectOpt = delOpt.options[delOpt.selectedIndex].value;
    if(selectOpt === "1"){
    	deliveryCost.innerHTML = 0
    	var value = price;
    	console.log(value);
 		document.getElementById("actualValue").innerHTML = "£" + value;
    }
    else if(selectOpt === "2"){
    	deliveryCost.innerHTML = 1
    	var value = price+1;
    	console.log(value);
 		document.getElementById("actualValue").innerHTML = "£" + value;
    }
    else if(selectOpt === "3"){
    	deliveryCost.innerHTML = 2.85
    	var value = price+2.85;
    	console.log(value);
 		document.getElementById("actualValue").innerHTML = "£" + value;
    }
}