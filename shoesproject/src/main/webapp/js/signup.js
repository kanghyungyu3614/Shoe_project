let cocl3 = document.querySelectorAll('.cocl3')
let checkcolor = [0,0,0,0,0];
function log1(){
	let lname = document.querySelector("#lname").value
	let lid = document.querySelector("#lid").value
	let lidc = /^[a-z0-9]{5,20}$/
	if(lidc.test(lid)){
		$.ajax({
			url:"/shoesproject/shoe/check",
			data:{"lid":lid,"lname" : lname },
			success :function(re){
			if(re==="true"){
				cocl3[0].innerHTML = "x"
				cocl3[1].innerHTML = "x"
			}else{cocl3[1].innerHTML = "o" ;
			cocl3[0].innerHTML = "o"}
			}
		})
		checkcolor[0] = 1;
	}else{
		cocl3[0].innerHTML = "x";
		cocl3[1].innerHTML = "x"
	}
}
function log2(){
	let lpw = document.querySelector("#lpw").value
	let lpwc = /^[a-zA-Z0-9]{10,20}$/
		if(lpwc.test(lpw)){
			cocl3[2].innerHTML = "o"
			checkcolor[1] = 1;
		}else{
			cocl3[2].innerHTML = "x"
		}
}
function log3(){
	let lph = document.querySelector("#lph").value
	let lphc = /^([0-9]{2,3})-([0-9]{3,4})-([0-9]{3,4})$/
	if(lphc.test(lph)){
		cocl3[3].innerHTML ="o"
		checkcolor[2] = 1;
	}else{
		cocl3[3].innerHTML ="x"
	}
}
function log4(){
	let lemail = document.querySelector("#lemail").value
	let lemailc = /^[a-zA-Z0-9+-_.]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-]+$/ 
	if(lemailc.test(lemail)){
		cocl3[4].innerHTML ="o"
		checkcolor[3] = 1;
	}else{
		cocl3[4].innerHTML ="x"
	}	
}
function log5(){
		let lsize = document.querySelector("#lsize").value
		let lsizec = /^([0-9]{2,3})$/
		if(lsizec.test(lsize)){
			cocl3[5].innerHTML ="x"
			checkcolor[4] = 1;
		}else{
			cocl3[5].innerHTML ="o"
		}
		for(let i = 0;  i<checkcolor.length; i++){
			if(checkcolor[i]==1){
				document.querySelectorAll(".btnsize")[0].style.backgroundColor = "black";
			}
		}
}
function signupbtn(){
		for(let i = 0; i<=5; i++){
		if(cocl3[i].innerHTML=="x"){
		alert("입력이 안된 정보가 있습니다."); return false;	}
		}
		if( document.querySelector("#chek1").checked == false){
			alert("이용약관에 동의해주세요"); return false;
		}
		if(document.querySelector("#chek2").checked == false){
			alert("이용약관에 동의해주세요"); return false;
		}
		document.querySelector(".lsignup").submit();
}
