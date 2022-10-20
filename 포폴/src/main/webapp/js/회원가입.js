

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
*/
let m = document.querySelector(".m") 
let m1 = document.querySelector(".m1")
let m2 = document.querySelector(".m2")
let m3 = document.querySelector(".m3")


function idc(){ //이름 아이디 유효성 + 중복

	let id = document.querySelector("#id").value
	let idc =/^[A-Za-z0-9]{6,20}$/
	
	console.log(id)
	if(idc.test(id)){
		$.ajax({
			url:"/태섭_경주포폴/member/check",
			data:{"id":id },
			success :function(re){
			if(re==="true"){
				
				m.innerHTML = "x"
			}else{m.innerHTML = "사용가능합니다"}
		
			}
			
			
		})
		
	}else{m.innerHTML = "x"}
}


function pwc(){
		let pw = document.querySelector("#pw").value
		let pwc = /^[a-zA-Z0-9]{8,20}$/
		
		if(pwc.test(pw)){
				m1.innerHTML = "o"
		}else{
			m1.innerHTML = "x"
		}
}

function phc(){
		let ph = document.querySelector("#ph").value
		let phc = /^([0-9]{2,3})-([0-9]{3,4})-([0-9]{3,4})$/
		
		if(phc.test(ph)){
			m2.innerHTML = "o"
		}else{
			m2.innerHTML = "x"
		}
		
}

function sizec(){
	let size = document.querySelector("#size").value;
	let sizec = /^([0-9]{2,3})$/
	
	
	if(sizec.test(size)){
		m3.innerHTML = "o"
	}else{ 
			m3.innerHTML = "x"
		}
}
function signup(){
			if(m1,m2,m3,m.innerHTML=="x"){
			alert("입력이 안된정보가 있습니다."); return false;	}
			document.querySelector(".sign").submit();
			alert("등록되었습니다.")
			location.href="/태섭_경주포폴/view/login.jsp"
	
}