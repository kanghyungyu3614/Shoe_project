notice()

function notice() {
	$.ajax({
		url: "/shoesproject/nload",
		data: { "type": "adminDetail" },
		success: function (re) {
			if(re){
				let list = JSON.parse(re)
				console.log(list) 
				let html = "<tr><th>번호</th><th>제목</th><th>내용</th><th>날짜</th><th>삭제버튼</th></tr>";
				for(let i = 0 ; i<list.length ; i++) {
					notice = list[i]
					html += "<tr>"
							+ "<td>"+notice.nno+"</td>"
							+ "<td>"+notice.ntitle+"</td>"
							+ "<td>"+notice.ncontent+"</td>"
							+ "<td>"+notice.ndate+"</td>"
							+ "<td><button type='button' onclick='ndelete("+notice.nno+")'>삭제</button></td>"
						+ "</tr>"
					document.querySelector('#notice_table').innerHTML = html
				}
			}
		}
	})
}

function ndelete(i) {
	$.ajax({
		url: "/shoesproject/ndelete",
		data: {"nno" : i},
		success: function (re) {
			if(re == 'true') {
				alert(re)
				window.location.reload()
			}
		}
	})
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
