let callComponent = 0;
let hideComponent = 0;
let hideNum = 0;
function sellAddButton(num) {
	hideComponent = document.querySelector("#size")
	hideComponent.innerHTML = num;
	let section = document.querySelector(".sellborder");
	let mainsection = document.querySelector("#main");
	let body = document.querySelector("body");
	var html = '<div class="sellButton" onclick="productSellButton()">' +
		'<div class="sellDeliver">일반배송(5-7일소요)</div>' +
		'</div>';
	callComponent += 1;
	if (callComponent < 2) {
		section.innerHTML += html;
		mainsection.style = "height: 100px"
		section.style = "height: 100px"
		body.style = "height: 100px"
	}
}
function productSellButton() {
	hideComponent = document.querySelector("#size")
	let hideNum = Number(hideComponent.innerHTML);
}
function selin(){
	let selprice = document.querySelector(".selprice").value
 	  hideComponent = document.querySelector("#size");
   	let hideNum = Number(hideComponent.innerHTML);
  	 console.log(hideNum+selprice);   
  	 $.ajax({
		url : "/shoesproject/product/detail",
		type : "post",
		data :  {"selprice" : selprice , "hideNum" : hideNum ,"type" : 1},
		success : function(re){
			if(re=="true"){
				alert("등록성공")
			}else{
				alert("실패")
			}	
		}
	})
}
function selbuy() {
	let selprice = document.querySelector(".selprice1").value
	hideComponent = document.querySelector("#size");
	let hideNum = Number(hideComponent.innerHTML);
	$.ajax({
		url: "/shoesproject/product/detail",
		type: "post",
		data: { "selprice": selprice, "hideNum": hideNum, "type": 2 },
		success: function(re) {
			if (re == "true") {
				alert("등록성공")
			} else {
				alert("실패")
			}
		}
	})
}
	
	
