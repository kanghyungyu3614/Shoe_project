

function login(){
	
	
	
	let lid = document.querySelector('#lid').value
	let lpw = document.querySelector('#lpw').value
	let alertp = document.querySelector(".alertp")

	$.ajax({
		url:"http://localhost:8080/%ED%83%9C%EC%84%AD_%EA%B2%BD%EC%A3%BC%ED%8F%AC%ED%8F%B4/shoe/login",
		data : {"lid" : lid, "lpw":lpw},
		success : function(re){
			if(re==='1'){
				alert("로그인되었습니다") 
				location.href='/태섭_경주포폴/main/mainhome.jsp'
			}else if(re==='2'){
				alertp.innerHTML = "비밀번호가 틀렸거나 존재하지 않는 아이디입니다.";
				
			}else if(re==='3'){
				alertp.innerHTML = "관리자 문의";

			}else if(re==='0'){
				alertp.innerHTML = "존재하지 않는 아이디입니다.";

			}
		}
	})
	
	
	
	
}