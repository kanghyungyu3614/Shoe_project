notice()

function  scroll1(){
	window.scroll({
			top: 1000,			
			behavior: "smooth"
	});		
}



function notice() {
	$.ajax({
		url: "/shoesProject/nload",
		success: function (re) {
			if(re){
				let list = JSON.parse(re)
				console.log(list)
				
				document.querySelector('.notice').innerHTML = 
				"<tr><th>제목</th><th>내용</th><th>날짜</th></tr>"
				
				for(let i = 0 ; i<list.length ; i++) {
					notice = list[i]
					html = "<tr>"
							+ "<td>"+notice.ntitle+"</td>"
							+ "<td>"+notice.ncontent+"</td>"
							+ "<td>"+notice.ndate+"</td>"
							+ "<td><button type='button' onclick='ndelete("+notice.nno+")'>삭제</button></td>"
						+ "</tr>"
					document.querySelector('.notice').innerHTML += html
				}
			}
		}
	})
}

function ndelete(i) {
	$.ajax({
		url: "/shoesProject/ndelete",
		data: {"nno" : i},
		success: function (re) {
			if(re == 'true') {			
				location.reload()
			}
		}
	})
}