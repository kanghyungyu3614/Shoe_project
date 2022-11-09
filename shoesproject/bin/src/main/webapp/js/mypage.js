/**
 * 
 */
 
mypa()

 function mypa(){
	$.ajax({
		url : "/shoesproject/shoe/mypage",
		success :function(re){
			
			let member = JSON.parse(re)
			
			console.log(member)
			document.querySelector(".ldate").innerHTML = member.lday
			document.querySelector(".lname").innerHTML = member.lname
			document.querySelector(".lpw").innerHTML = member.lpw
			document.querySelector(".lph").innerHTML = member.lph
			document.querySelector(".lemail").innerHTML = member.lemail
			document.querySelector(".lsize").innerHTML = member.lsize
			
		}
		
		
	})
}

function deletemember(){
	
	let dele = prompt("비밀번호를 입력해주세요")
	console.log(dele)
	$.ajax({
		url : "/shoesproject/shoe/mypage",
		type :'POST', 
		data :{"dele" : dele},
		success : function(re){
			if(re=='true'){
				alert("탈퇴 되었습니다.")
				location.href="/view/logout.jsp"
			}else{
				alert("비밀번호가 동일하지 않습니다")
			}
		}
		
	})
	
	
}

function reupdate(){
	let reuplist = document.querySelectorAll(".reup")
	reuplist[0].innerHTML = '<button onclick="reinsert()">수정하기</button'
	document.querySelector('.lpw').innerHTML = '<input type="text" class="upinp">'
	
	let upinp = document.querySelector(".upinp").value
	
	console.log(upinp)
}
function reinsert(){
	let upinp = document.querySelector(".upinp").value
	
	let lnum = document.querySelector(".lno").innerHTML
	
	
	let lpwc = /^[a-zA-Z0-9]{10,20}$/
		if(lpwc.test(upinp)){
	$.ajax({
		url : "/shoesproject/shoe/mypage",
		type :'put',
		data : {"upinp" : upinp , "lnum" : lnum},
		
		success : re=>{
			if(re=='true'){
				alert("수정되었습니다.")
				location.reload()
			}else{
				alert("수정실패")
			}
		}
		
	})
	
	}else{
		alert("영소/대문자 10글자 이상 작성")
	}
}


