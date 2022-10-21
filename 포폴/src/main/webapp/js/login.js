

function login(){
	
	
	
	let l_id = document.querySelector('.l_id').value
	let l_pw = document.querySelector('.l_pw').value

	
	$.ajax({
		url:"http://localhost:8080/%ED%83%9C%EC%84%AD_%EA%B2%BD%EC%A3%BC%ED%8F%AC%ED%8F%B4/member/login",
		data : {"l_id" : l_id, "l_pw":l_pw},
		success : function(re){
			if(re==="true"){
				alert("로그인되었습니다") 
				location.href("/member/login")
			}else{
				document.querySelector(".alertp").innerHTML = "비밀번호가 틀렸거나 존재하지 않는 아이디입니다.";
				
			}
		}
	})
	
	
	
	
}