notice()

function scroll1() {
	window.scroll({
		top: 1000,
		behavior: "smooth"
	});
}

function notice() {
	$.ajax({
		url: "/shoesproject/nload",
		data: { "type": "admin" },
		success: function(re) {
			if (re) {
				let list = JSON.parse(re)
				console.log(list)

				document.querySelector('.notice').innerHTML =
					"<tr><th>제목</th><th>내용</th><th>날짜</th></tr>"

				for (let i = 0; i < list.length; i++) {
					notice = list[i]
					html = "<tr>"
						+ "<td>" + notice.ntitle + "</td>"
						+ "<td>" + notice.ncontent + "</td>"
						+ "<td>" + notice.ndate + "</td>"
						+ "<td><button type='button' onclick='ndelete(" + notice.nno + ")'>삭제</button></td>"
						+ "</tr>"
					document.querySelector('.notice').innerHTML += html
				}
			}
		}
	})
}

function ndelete(i) {
	$.ajax({
		url: "/shoesproject/ndelete",
		data: { "nno": i },
		success: function(re) {
			if (re == 'true') {
				alert("삭제 완료!!")
				window.location.reload()
			} else {
				alert("삭제 실패!!")
			}
		}
	})
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
