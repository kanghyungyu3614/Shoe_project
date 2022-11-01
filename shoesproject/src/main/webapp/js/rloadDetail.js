rloadDetail()
function rloadDetail() {
	$.ajax({
		url : "/shoesproject/rload",
		data : { "type" : "adminDetail" },
		success : function (re) {
			if(re){
				let list = JSON.parse(re)
				console.log(list)
				
				document.querySelector('.request').innerHTML = 
				"<tr><th>번호</th><th>제목</th><th>내용</th><th>날짜</th><th></th><th></th></tr>"
				
				for(let i = 0 ; i<list.length ; i++) {
					r = list[i]
					html = `<tr>
								<td>${r.rno}</td>
								<td>${r.rtitle}</td>
								<td>${r.rcontent}</td>
								<td>${r.rdate}</td>
								<td><button type="button" onclick="commentform(${r.rno})">답변하기</td>
								<td><button type="button" onclick="rdelete(${r.rno})">삭제</button></td>
							</tr>
							<tr class="commentform${r.rno}"></tr>
							`
					document.querySelector('.request').innerHTML += html
				}
			}
		}
	})
}

function rdelete(rno) {
	
	if(confirm("정말 삭제하시겠습니까?")){		
		$.ajax({
			url : "/shoesproject/rdelete",
			data : { "rno" : rno },
			success : function (re) {
				if(re == 'true') {
					alert('삭제 완료!!')
					window.location.reload()
				} else {
					alert('삭제 실패!!')
					window.location.reload()
				}
			}
		})
	} else {
		return;
	}
}

function logout() {
	
	$.ajax({
		url : "/shoesproject/logout",
		success: function (re) {
			if(re) {
				window.location.href="/shoesproject/main/mainhome.jsp"
			}
		}
	})
}
let rloadstate = false /* 답변하기 폼 열고닫기 상태 저장하는 변수 */

// 답글 폼 생성
function commentform(rno) {
	
	if( rloadstate == false  ){ // 답변하기 폼이 열려있으면 답변하기 상세페이지 오픈
		html = `<tr>
				<td colspan="6" style="height: 500px; border: 1px solid black;">
					제목 : <input type="text" class="ctitle" style="border: 1px solid black; width: 300px; height: 30px; margin-bottom: 20px;"> <br>
					내용 : <input type="text" class="ccontent" style="border: 1px solid black; width: 300px; height: 200px; margin-bottom: 20px;"> <br>
					<button type="button" style="width: 100px; height:50px; border: 1px solid black; margin-left: 48px;">답변하기</button>
				</td>
			</tr>`
		rloadstate = true; // 답변하기 열리면 true 전환
	}else{ // 답변하기 폼이 열려있을때 다시 버튼을 눌러주면
		html = ""; // 공백처리
		rloadstate = false; // 닫히면 false 전환 
	}
	document.querySelector(`.commentform${rno}`).innerHTML = html
}

// 답글 하기
function comment(rno) {
	
	$.ajax({
		url : "/shoeproject/comment",
		data : { "rno" : rno },
		success : function (re) {
			if(re === 'true') {
				alert('답글 작성 완료')
			}else{ ( alert ( '답글 작성 실패'))
			}
		}
	})
}












