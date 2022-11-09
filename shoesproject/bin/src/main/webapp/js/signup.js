let cocl3 = document.querySelectorAll('.cocl3')


function log1(){
	let lname = document.querySelector("#lname").value
	let lid = document.querySelector("#lid").value
	let lidc = /^[a-z0-9]{5,20}$/
	
	console.log(lid)
	console.log(lname)
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
		}else{
			cocl3[2].innerHTML = "x"
			
		}
	
	
}

function log3(){
	let lph = document.querySelector("#lph").value
	let lphc = /^([0-9]{2,3})-([0-9]{3,4})-([0-9]{3,4})$/
	if(lphc.test(lph)){
		
		cocl3[3].innerHTML ="o"
	}else{
		cocl3[3].innerHTML ="x"
	}
	
} 


function log4(){
	
	let lemail = document.querySelector("#lemail").value
	let lemailc = /^[a-zA-Z0-9+-_.]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-]+$/ 
	
	if(lemailc.test(lemail)){
		
		cocl3[4].innerHTML ="o"
	}else{
		cocl3[4].innerHTML ="x"

	}
		
}

function log5(){
	
		let lsize = document.querySelector("#lsize").value
		let lsizec = /^([0-9]{2,3})$/
		if(lsizec.test(lsize)){
			cocl3[5].innerHTML ="x"
		}else{
			cocl3[5].innerHTML ="o"
		}
		
}
function signupbtn(){
		
		for(let i = 0; i<=5; i++){
		if(cocl3[i].innerHTML=="x"){
		alert("입력이 안된정보가 있습니다."); return false;	}
		}
		if( document.querySelector("#chek1").checked == false){
			alert("이용약관에 동의해주세요"); return false;
		}
		if(document.querySelector("#chek2").checked == false){
			alert("이용약관에 동의해주세요"); return false;
		}
		
		
		document.querySelector(".lsignup").submit();
		
		
}

/*
function signup(){
	
	
	let pw = document.querySelector("#pw").value
	let ad = document.querySelector("#ad").value
	let ph = document.querySelector("#ph").value
	let size = document.querySelector("#size").value;

	let value={
	name,id,pw,ad,ph,size
	
	} // 객체화의 문제찾기
	
	console.log(value)
	
	
	console.log(id,pw,ad,ph,size)
	$.ajax({
	url:"http://localhost:8080/%ED%83%9C%EC%84%AD_%EA%B2%BD%EC%A3%BC%ED%8F%AC%ED%8F%B4/signup/mamber",
	data :{"pw":pw,"ad":ad,"ph":ph,"size":size},
	success :function(re){
		if(re==="true"){alert("회원가입성공")}
		else {alert("가입실패")}
		
		}
	})
	/태섭_경주포폴/member/check
	
}

let m = document.querySelectorAll(".m") 

function namec(){
	let name = document.querySelector('#s_name').value
	let namec =/^[A-Za-z가-힣]{5,20}$/
	console.log(name)
	if(namec.test(name)){
			m[0].innerHTML = "x"
		}else{
			m[0].innerHTML = "o"
		}
}


function idc(){ //이름 아이디 유효성 + 중복
	
	let id = document.querySelector("#s_id").value
	let idc =/^[A-Za-z0-9]{6,20}$/
	
	console.log(id)
	if(idc.test(id)){
		$.ajax({
			url:"/태섭_경주포폴/member/check",
			data:{"id":id },
			success :function(re){
			if(re==="true"){
				
				m[1].innerHTML = "x"
			}else{m[1].innerHTML = "o"}
		
			}
			
			
		})
		
	}else{m[1].innerHTML = "x"}
}


function pwc(){
		let pw = document.querySelector("#s_pw").value
		let pwc = /^[a-zA-Z0-9]{8,20}$/
		
		if(pwc.test(pw)){
				m[2].innerHTML = "o"
		}else{
			m[2].innerHTML = "x"
		}
}

function phc(){
		let ph = document.querySelector("#s_ph").value
		let phc = /^([0-9]{2,3})-([0-9]{3,4})-([0-9]{3,4})$/
		
		if(phc.test(ph)){
			m[3].innerHTML = "o"
		}else{
			m[3].innerHTML = "x"
		}
		
}

function sizec(){
	let size = document.querySelector("#s_size").value;
	let sizec = /^([0-9]{2,3})$/
	
	
	if(sizec.test(size)){
		m[4].innerHTML = "o"
	}else{ 
			m[4].innerHTML = "x"
		}
}
function signup(){
			
			if(m.innerHTML=="x"){
			alert("입력이 안된정보가 있습니다."); return false;	}
			document.querySelector(".sign").submit();
			alert("등록되었습니다.")
			location.href="/태섭_경주포폴/view/login.jsp"
	
}


*/