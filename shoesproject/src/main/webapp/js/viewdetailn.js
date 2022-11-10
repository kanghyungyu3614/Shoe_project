// 일반회원 공지출력
notice()
function notice() {
	$.ajax({
		url: "/shoesproject/nload",
		data: {"type" : "member" },
		success: function (re) {
			if(re){
				let list = JSON.parse(re)
				console.log(list) 
				let html = "<tr><th>번호</th><th>제목</th><th>내용</th><th>날짜</th></tr>";
				for(let i = 0 ; i<list.length ; i++) {
					notice = list[i]
					html += "<tr>"
							+ "<td>"+notice.nno+"</td>"
							+ "<td>"+notice.ntitle+"</td>"
							+ "<td>"+notice.ncontent+"</td>"
							+ "<td>"+notice.ndate+"</td>"
						+ "</tr>"
					document.querySelector('#notice_table').innerHTML = html
				}
			}
		}
	})
}