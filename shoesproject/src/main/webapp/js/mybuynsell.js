getbuylist()
function getbuylist(){
	$.ajax({
		url: "/shoesproject/product/psession",
		type: "post",
		data: { "type": 1 },
		async: false,
		success: function(re) {
			if (re) {
				let bns = JSON.parse(re)
				let html = '';
				let pimg = null;
				let bnsp;
				for (let i = 0; i < bns.length; i++) {
					bnsp = bns[i]
					pimg = `<img src="/shoesproject/pupload/${bnsp.pimg}">`
						html +=
							+ "<div class='str'>" + bnsp.spbuyid + "</div> <br>"
							+ pimg
							+ "<div class='str'>" + bnsp.spsize + "</div> <br>"
							+ "<div class='str'>" + bnsp.pname + "</div> <br>"
							+ "<div class='str'>" + bnsp.preleaseday + "</div> <br>"
							+ "<div class='str'>" + bnsp.spstatus + "</div> <br>"

				}
				document.querySelector('.buy').innerHTML = html
			}
		}
	})
}
getselllist()
function getselllist(){
	$.ajax({
		url: "/shoesproject/product/psession",
		type: "post",
		data: { "type": 2 },
		async: false,
		success: function(re) {
			if (re) {
				let bns = JSON.parse(re)
				let html = '';
				let pimg = null;
				let bnsp;
				for (let i = 0; i < bns.length; i++) {
					bnsp = bns[i]
					pimg = `<img src="/shoesproject/pupload/${bnsp.pimg}">`
						html +=
							+ "<div class='str'>" + bnsp.spsellid + "</div> <br>"
							+ pimg
							+ "<div class='str'>" + bnsp.spsize + "</div> <br>"
							+ "<div class='str'>" + bnsp.pname + "</div> <br>"
							+ "<div class='str'>" + bnsp.preleaseday + "</div> <br>"
							+ "<div class='str'>" + bnsp.spstatus + "</div> <br>"
						
				}
				document.querySelector('.sell').innerHTML = html
			}
		}
	})
}	