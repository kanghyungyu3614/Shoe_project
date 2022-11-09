
function login(){
	
	
	
	let lid = document.querySelector('#lid').value
	let lpw = document.querySelector('#lpw').value
	let alertp = document.querySelector(".alertp")

	$.ajax({
		url:"/shoesproject/shoe/login",
		data : {"lid" : lid, "lpw":lpw},
		success : function(re){
			if(re==='1'){
				alert("로그인되었습니다") 
				location.href='/shoesproject/main/mainhome.jsp'
			}else if(re==='2'){
				alertp.innerHTML = "비밀번호가 틀렸거나 존재하지 않는 아이디입니다.";
				
			}else if(re==='3'){
				alertp.innerHTML = "관리자 문의";

			}else if(re==='0'){
				alertp.innerHTML = "비밀번호가 틀렸거나 존재하지 않는 아이디입니다";

			}
		}
	})
	
	
	
	
}