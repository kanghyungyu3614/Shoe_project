detail()
let callComponent = 0;
let hideComponent = 0;
let hideNum = 0;
let product_number = document.querySelector(".product_number").innerHTML

function detail() {
	$.ajax({
		url : "/shoesproject/product/detail",
		async: false,
		success : function (re) {
			let product = JSON.parse(re)
			
			html = `<h1>${product.pno}번 상품 디테일입니다.</h1>`
			let pimg = "/shoesproject/pupload/"+ product.pimg
			document.querySelector('.priceimg').src = pimg
			document.querySelector('.priceimg1').src = pimg
			
			document.querySelector('.product').src = pimg
			document.querySelector(".productname").innerHTML = product.pname
			document.querySelector(".productdate").innerHTML = product.preleaseday
			document.querySelector(".productcolor").innerHTML = product.pcolor
			document.querySelector(".productpbrand").innerHTML = product.pbrand
			document.querySelector(".product_number").innerHTML = product.pno
			document.querySelector(".product_engliname").innerHTML = product.pname
			document.querySelector(".product_koreaname").innerHTML = product.pcolor
			document.querySelector(".product_number1").innerHTML = product.pno
			document.querySelector(".product_engliname1").innerHTML = product.pname
			document.querySelector(".product_koreaname1").innerHTML = product.pcolor
		
		}
	})
}



function sellAddButton(num){ // 판매
	
	product_number = document.querySelector(".product_number").innerHTML
	hideComponent = document.querySelector("#size")
	hideComponent.innerHTML = num;
	let pricelist = document.querySelector(".pricelist")
	let html = ''
	 hideComponent = document.querySelector("#size");
   	 hideNum = Number(hideComponent.innerHTML);
   	 let pno = product_number;
  
   	
	$.ajax({	
		url : "/shoesproject/product/detail",
		type :'post',
		data : {"hideNum" : hideNum , "type" : 3 ,"pno" : pno},
		success : re=>{
			
		if(re){		
			let json = JSON.parse(re)
			
			for(let i = 0; i<json.length; i++){
			
			html +='<button class="productlist" onclick="productlist('+json[i].spno+')">'+
					'<div>'+json[i].spsize+'</div>' +
					'<div>'+json[i].spprice+'</div>'+
					'<div>'+json[i].spbuyid+'</div>'+
				'</button>'
		    
		}
		pricelist.innerHTML = html;}
		else{
			html = ''
			}
		}
	
	})
	
	
}


/**-------------------------------판매입찰하기 */
function sellmain(){
	let html = ''
	let html2 = ''
	html = 
	'         	희망가격 : <input type="text" class="selprice">'
	
	document.querySelector('.sellmainprice').innerHTML = html
	html2 = '<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>'+
'        <button type="button" class="btn btn-primary" onclick="selin()">sell</button>';	
	
	document.querySelector('.modal-footer').innerHTML = html2 
}
/*-----------------------------------------------------------------------------*/
function buyAddButton(num){ // 구매
	console.log(num);
	hideComponent = document.querySelector("#size")
	hideComponent.innerHTML = num;
	

	product_number = document.querySelector(".product_number").innerHTML
	hideComponent = document.querySelector("#size")
	hideComponent.innerHTML = num;
	let pricelist1 = document.querySelector(".pricelist1")
	let html = ''
	 hideComponent = document.querySelector("#size");
   	 hideNum = Number(hideComponent.innerHTML);
   	 let pno = product_number;
   	 alert(pno)
   	 
	$.ajax({	
		url : "/shoesproject/product/detail",
		type :'post',
		data : {"hideNum" : hideNum , "type" : 4 ,"pno" : pno},
		success : re=>{
			
		if(re){		
			let json = JSON.parse(re)
			console.log(json)
			for(let i = 0; i<json.length; i++){
			html +='<button class="productlist" onclick="productbuylist('+json[i].spno+')">'+
					'<div>'+json[i].spsize+'</div>' +
					'<div>'+json[i].spprice+'</div>'+
					'<div>'+json[i].spsellid+'</div>'+
				'</button>'
		    
		}
		pricelist1.innerHTML = html;}
		else{
			html = ''
			}
		}
	
	})
}

/**-------------------------------구매입찰하기 */
function buymain(){
	let html = ''
	let html2 = ''
	html = '희망가격 : <input type="text" class="selprice1">'
	
	document.querySelector('.buymainprice').innerHTML = html
	
	html2 = '<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>'+
			'<button type="button" class="btn btn-primary" onclick="selbuy()">buy</button>';
	document.querySelector('#modal-footer').innerHTML = html2 
}
/**----------------------------------------------------- */
function selin(){
	let selprice = document.querySelector(".selprice").value
 	  hideComponent = document.querySelector("#size");
   	 hideNum = Number(hideComponent.innerHTML);
		let pno = Number(product_number);
  	
  	 $.ajax({
		url : "/shoesproject/product/detail",
		type : "post",
		data :  {"selprice" : selprice , "hideNum" : hideNum ,"type" : 1 , "pno" : pno},
		success : function(re){
			if(re=="true"){
				alert("등록성공")
				window.location.reload()
			}else{
				alert("실패")
			}
			
		}
		
	
})
   
}
function selbuy(){
	let selprice = document.querySelector(".selprice1").value
 	  hideComponent = document.querySelector("#size");
   	 hideNum = Number(hideComponent.innerHTML);
	let pno = Number(product_number)
	
  	
  	 $.ajax({
		url : "/shoesproject/product/detail",
		type : "post",
		data :  {"selprice" : selprice , "hideNum" : hideNum ,"type" : 2 ,"pno" : pno},
		success : function(re){
			if(re=="true"){
				alert("등록성공")
			window.location.reload()
			}else{
				alert("실패")
			}
			
		}
		
})
}
	





/*------------------------------------판매 결제*----------------*/
function productlist(spno){
	let ok =  confirm("즉시판매하시겠습니까?")
	if(ok==true){
		$.ajax({
			url : "/shoesproject/product/detail",
			type : "put",
			data : {"spno":spno ,"type" : 1},
			success : re=>{alert(re)}
			
		})
	}
}


/*------------------------------------구매 결제*----------------*/

function productbuylist(spno){
	let ok =  confirm("즉시구매하시겠습니까?")
	if(ok==true){
		$.ajax({
			url : "/shoesproject/product/detail",
			type : "put",
			data : {"spno":spno ,"type" : 2},
			success : re=>{alert(re)}
			
		})
		
	}
}
let xValues; 
let yValues;
/*-------------------------------거래 리스트------------------------*/
suclist()
function suclist(){
	let slist  = document.querySelector(".successlist")
	let	html = '<tr> <th>사이즈</th> <th>가격</th> <th>시간</th> </tr>'		
	let pno = Number(product_number)
	if(product_number!=null){
	$.ajax({
		url : "/shoesproject/product/detail",
		async : false,
		type :"post",
		data : {"type" : 5 , "pno" : pno},
		success : re=>{
			console.log("re");
			console.log(re);
			let json = JSON.parse(re)
				//yValues += [300000,130000,140000,150000,160000,180000,200000,230000,250000]; 
				//xValues = [,"","","","","","","","","",]
			// x축 11개 y축 11개 대응 1:1 대응
			// x축의 가로축값 ==> 날짜로 아마 하는게 좋겠죠?? 
			xValues = [];
			//x축에 대응되는 y축값 (0,0) 좌표값을 말합니다. 여기에 가격을 넣는게 맞겠죠?? 
			yValues = [];	
			for(let i = 0; i<json.length ; i++){
				
				xValues[i] = ""
				yValues[i] = json[i].spprice
				//yValues += [json[i].spprice]
				console.log(yValues)
				html += '<tr>'+
							'<th>'+json[i].spsize+'</th>'+
							'<th>'+json[i].spprice+'</th>'+
							'<th>'+json[i].spendday+'</th>'+
						'</tr>'		
							
			}
			
			
			
			slist.innerHTML = html
			
		}
				
		
		
	}) 
	
	}
}


ChartJs();
function ChartJs(){
/*--------------------------------차트구역-----------------------*/


// Chart객체의 구조 
// new Chart("dom으로 가져올 id",{객체인데 그래프에 설정 하고싶은 것들을 넣어주는겁니다.} )
new Chart("myChart", {
  type: "line",
  data: {
    labels: xValues,
    //  라벨을 xValues라는 변수를 쓸거다.
    //datasets은 아마 그래프 css설정 인거 같아요. 
    datasets: [{
      data: yValues, // data에는 yValues를 넣을겁니다.
      fill: false, // 그래프와 x축을 적분처럼 다 색을 칠할건지 ==> 근데 이건 안하는게 이쁨 
      // 그래프 색은 빨간색이 좋을거 같아요.
      backgroundColor: "#3136ff",
      borderColor: "#3136ff",
      // 이게 꼭짓점 없애는 애다. 시작
      pointRadius: 3,
      lineTension : 0
      // 이게 꼭짓점 없애는 애다. 끝
    }]
  },
  // datasets를 이렇게 쓸거다.
  options: {
	// 그래프 위의 말 지우기 시작
    legend: {display: false},
	// 그래프 위의 말 지우기 끝
    scales: {
      // x축 설정 시작
    	xAxes: [{
			ticks:{
				fontSize : 10,fontFamily : 'Helvetica Neue',fontWeight: 600,fontColor : 'black'
			}
		}]
      // x축 설정 끝 
      // y축 설정 시작 
      ,yAxes: [{
    	  ticks: {min: 0, max:500000, fontSize : 10, fontFamily : 'Helvetica Neue',fontWeight: 600,fontColor : 'black', reverse: false ,beginAtZero: true}
      	  ,position: 'right'
      	  }]
    	
      // y축 설정 끝 
      // ==> 0에서 시작, 최대는 3만으로 설정, reverse(되짚는거 말하는거 같습니다. 안하는게 좋습니다.), y축 설명의 위치는 당연히 오른쪽 
    }
    ,animations: {
        tension: {
            duration: 1000,
            easing: 'linear',
            from: 1,
            to: 10,
            loop: true
          }
        }
    
  }
  // 옵션으로 이렇게 쓸거다.
});
	
}


// 드롭다운 닫기 
$(window).scroll(function () { 
	var scrollValue = $(document).scrollTop(); 
	console.log(scrollValue);
    if (scrollValue>0&&scrollValue<89.5){
		imgComponent = document.querySelector('.img_coponent')
		imgComponent.style.position = "static"; 	
		imgComponent.style.top = "none"; 
	}
    else if(scrollValue>89.5&&scrollValue < 1286 ){
		imgComponent = document.querySelector('.img_coponent')
		imgComponent.style.position = "fixed";
		imgComponent.style.top = 0; 	
	}
	else if(scrollValue>1287&&scrollValue < 2000){
		imgComponent = document.querySelector('.img_coponent')
		imgComponent.style.position = "relative";		
		imgComponent.style.top = "1200px"; 
	}
});	
