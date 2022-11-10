rloadDetaild()
function rloadDetaild() { // 내가 문의한 게시물만 출력
	$.ajax({
		url: "/shoesproject/rload",
		data: { "type": "memberd" },
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
									<h4> 답변 제목 </h4> <br> <h5> ${c.ctitle} </h5> <br> 
									<h4> 답변 내용 </h4> <br> <h5> ${c.ccontent} </h5> <br>
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