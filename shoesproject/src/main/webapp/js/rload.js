rload()
function rload() {
	$.ajax({
		url : "/shoesproject/rload",
		data : { "type" : "admin" },
		success : function (re) {
			if(re){
				let list = JSON.parse(re)
				console.log(list)
				
				document.querySelector('.request').innerHTML = 
				"<tr><th>번호</th><th>제목</th><th>내용</th><th>날짜</th><th></th></tr>"
				
				for(let i = 0 ; i<list.length ; i++) {
					r = list[i]
					html = "<tr>"
							+ "<td>"+r.rno+"</td>"
							+ "<td>"+r.rtitle+"</td>"
							+ "<td>"+r.rcontent+"</td>"
							+ "<td>"+r.rdate+"</td>"
							+ "<td><button type='button' onclick='ndelete("+r.rno+")'>삭제</button></td>"
						+ "</tr>"
					document.querySelector('.request').innerHTML += html
				}
			}
		}
	})
}
