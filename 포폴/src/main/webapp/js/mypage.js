/**
 * 
 */
 
mypa()
 function mypa(){
	$.ajax({
		url : "http://localhost:8080/%ED%83%9C%EC%84%AD_%EA%B2%BD%EC%A3%BC%ED%8F%AC%ED%8F%B4/shoe/mypage",
		success :function(re){
			
			let member = JSON.parse(re)
			console.log(member)
			document.querySelector(".lno").innerHTML = member.lnum
			document.querySelector(".ldate").innerHTML = member.lday
			document.querySelector(".lname").innerHTML = member.lname
			document.querySelector(".lid").innerHTML = member.lid
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
		url : "http://localhost:8080/%ED%83%9C%EC%84%AD_%EA%B2%BD%EC%A3%BC%ED%8F%AC%ED%8F%B4/shoe/mypage",
		type :'POST', 
		data :{"dele" : dele},
		success : function(re){
			if(re=='true'){
				alert("탈퇴 되었습니다.")
				location.href="http://localhost:8080/%ED%83%9C%EC%84%AD_%EA%B2%BD%EC%A3%BC%ED%8F%AC%ED%8F%B4/view/logout.jsp"
			}else{
				alert("비밀번호가 동일하지 않습니다")
			}
		}
		
	})
	
	
}