rloadDetail()
let rnum = ''
function rloadDetail() {
	$.ajax({
		url: "/shoesproject/rload",
		data: { "type": "adminDetail" },
		success: function(re) {
			if (re) {
				let list = JSON.parse(re)
				console.log(list)
				document.querySelector('.request').innerHTML =
					"<tr><th>번호</th><th>제목</th><th>내용</th><th>날짜</th></tr>"
				for (let i = 0; i < list.length; i++) {
					r = list[i]
					rnum = list[i].rno
					html = `<tr>
								<td>${r.rno}</td>
								<td>${r.rtitle}</td>
								<td>${r.rcontent}</td>
								<td class="board_date">${r.rdate}</td>
								<td class="board_thing"><button type="button" class="board_btn" onclick="commentview(${r.rno})">답변보기</td>
								<td class="board_thing"><button type="button" class="board_btn" onclick="rdelete(${r.rno})">삭제</button></td>
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
	if (confirm("정말 삭제하시겠습니까?")) {
		$.ajax({
			url: "/shoesproject/rdelete",
			data: { "rno": rno },
			success: function(re) {
				if (re == 'true') {
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
		url: "/shoesproject/logout",
		success: function(re) {
			if (re) {
				window.location.href = "/shoesproject/main/mainhome.jsp"
			}
		}
	})
}
let rloadstate = false /* 답변하기 폼 열고닫기 상태 저장 변수 */

// 답글 폼 생성
function commentform(rno) {
	if (rloadstate == false) { // 답변하기 폼이 열려있으면 답변하기 상세페이지 오픈
		html = `<tr>
				<td colspan="7" style="height: 500px; border: 1px solid black;">
					제목 : <input type="text" class="ctitle" 		id="ctitle" 	style="border: 1px solid black; width: 300px; height: 30px; 	margin-bottom: 20px;"> <br>
					내용 : <input type="text" class="ccontent" 	id="ccontent" 	style="border: 1px solid black; width: 300px; height: 200px; 	margin-bottom: 20px;"> <br>
					<button type="button" style="width: 100px; height:50px; border: 1px solid black; margin-left: 48px;" onclick="comment(${rno})">답변하기</button>
				</td>
			</tr>`
		rloadstate = true; // 답변하기 열리면 true 전환
	} else { // 답변하기 폼이 열려있을때 다시 버튼을 눌러주면
		html = ""; // 공백처리
		rloadstate = false; // 닫히면 false 전환 
	}
	document.querySelector(`.commentform${rno}`).innerHTML = html
}

let cloadstate = false /* 답변한 내용 폼 열고닫기 상태 저장 변수 */
// 답변내용 보기 폼 생성
function commentview(rno) {
	$.ajax({
		url: "/shoesproject/admin/cload",
		data: { "rno": rno },
		success: function(re) {
			if (re) {
				let list = JSON.parse(re)
				for (let i = 0; i < list.length; i++) {
					let c = list[i]
					if (cloadstate == false) { // 답변하기 폼이 열려있으면 답변하기 상세페이지 오픈
						html = `<tr>
								<td colspan="7" style="height: 500px; border: 1px solid black;">
									<h4> 답변 한 제목 </h4> <br> <h5> ${c.ctitle} </h5> <br> 
									<h4> 답변 한 내용 </h4> <br> <h5> ${c.ccontent} </h5> <br>
								</td>
								</tr>`
						cloadstate = true; // 답변하기 열리면 true 전환
					} else { // 답변하기 폼이 열려있을때 다시 버튼을 눌러주면
						html = ""; // 공백처리
						cloadstate = false; // 닫히면 false 전환 
					}
					document.querySelector(`.commentform${rno}`).innerHTML = html
				}
			}
		}
	})
}
// 문의 답변하기 []안태섭]
function comment(rno) {
	let ctitle = document.querySelector('.ctitle').value
	let ccontent = document.querySelector('.ccontent').value
	$.ajax({
		url: "http://localhost:8080/shoesproject/admin/comment",
		data: { "rno": rno, "ctitle": ctitle, "ccontent": ccontent },
		type: 'post',
		success: function(re) {
			if (re == 'true') {
				alert('답글 작성 완료') // 답글 작성 성공하면
				window.location.reload() // 페이지 새로고침 ( 최신화 )
			} else {
				(alert('답글 작성 실패'))
			}
		}
	})
}













