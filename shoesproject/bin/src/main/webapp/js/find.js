function findid(){
	let findname = document.querySelector("#findname").value
	let findph = document.querySelector("#findph").value
	console.log(findph)
	let findphj = /^([0-9]{2,3})-([0-9]{3,4})-([0-9]{3,4})$/ //유효성 안되는 이유 물어보기
	
	if(findphj.test(findph)){
		
	$.ajax({
		url : "/shoesproject/shoe/find",
		data :{"findname": findname,"findph":findph},
		success :function(re){
			
			if(re!='null'){
			document.querySelector(".find").innerHTML = "아이디 :" +re;
			}else if(re === 'null'){
			document.querySelector(".find").innerHTML = "성명 또는 전화번호가 다릅니다"
			}
		}
		
		
	})
	}else{document.querySelector(".fph").innerHTML = "010-xxxx-xxxx 형식작성"}
}

function loginview(){
	let check = confirm("로그인하시겠습니까?")
	if(check ===true){
		location.href="/shoesproject/main/mainhome.jsp"
	}else{
		alert("돌아갑니다")
	}
}

function findpw(){
		let findid = document.querySelector("#findid").value
		let sname = document.querySelector("#sname").value
		let sph = document.querySelector("#sph").value
		console.log(findid+sname+sname)
		
		
		$.ajax({
			url:"/shoesproject/shoe/find",
			type :'POST',
			data :{"findid" :findid ,"sname" : sname ,"sph" : sph},
			success : function(re){
				if(re===''){
					document.querySelector(".findbox").innerHTML = "입력된 정보가 없습니다"
				}else{
					alert("개인 정보가 확인 되었습니다.")
					document.querySelector(".findbox").innerHTML = "임시 비밀번호" + re
					
				}
			}
			
			
		})
	
}