let callComponent = 0;
let hideComponent;
let hideNum = 0;
function buyAddButton(num) {
	console.log(num);
	let hideComponent = document.querySelector("#size")
	hideComponent.innerHTML = num;
	let section = document.querySelector(".sellborder");
	let mainsection = document.querySelector("#main");
	let body = document.querySelector("body");

	var html = '<div class="buyButton" onclick="productBuyButton()">' +
		'<div class="buyFinal">구매입찰</div>' +
		'<div class="buyDeliver">일반배송(5-7일소요)</div>' +
		'</div>';
	callComponent += 1;
	console.log(section);
	if (callComponent < 2) {
		section.innerHTML += html;
		mainsection.style = "height: 903px"
		section.style = "height: 816px"
		body.style = "height: 750px"
	}

}
function productBuyButton() {
	hideComponent = document.querySelector("#size");
	let hideNum = Number(hideComponent.innerHTML);

	console.log(hideNum);	
	
}
