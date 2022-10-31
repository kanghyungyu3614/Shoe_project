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
				"<tr><th>번호</th><th>제목</th><th>내용</th><th>날짜</th><th></th></tr>"
				
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

// 답글 폼 생성
function commentform(rno) {
	html = `<tr>
				<td colspan="6" style="height: 500px;">
					제목 : <input type="text" class="ctitle" style="border: 1px solid black;"> <br>
					내용 : <input type="text" class="ccontent" style="border: 1px solid black;"> <br>
					<button type="button">답변하기</button>
				</td>
			</tr>`
	document.querySelector(`.commentform${rno}`).innerHTML = html
}

// 답글 요청
function comment(rno) {
	$.ajax({
		url : "/shoeproject/comment",
		data : {"rno" : rno},
		success : function (re) {
			if(re) {
				window.location.reload()
			}
		}
	})
}










