detail()
function detail() {
	$.ajax({
		url : "/shoesproject/product/detail",
		success : function (re) {
			let product = JSON.parse(re)
			
			console.log(product.pno)
			html = `
				<h1>${product.pno}번 상품 디테일입니다.</h1>
			`
			
			document.querySelector('.product').innerHTML = html
		}
	})
}














// x축 11개 y축 11개 대응 1:1 대응
// x축의 가로축값 ==> 날짜로 아마 하는게 좋겠죠?? 
var xValues = ["6개월전","","","","","","","","","","오늘"];
//x축에 대응되는 y축값 (0,0) 좌표값을 말합니다. 여기에 가격을 넣는게 맞겠죠?? 
var yValues = [0,100000,130000,140000,150000,160000,180000,200000,230000,250000,300000];
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
      backgroundColor: "red",
      borderColor: "red",
      // 이게 꼭짓점 없애는 애다. 시작
      pointRadius: 0 
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
    	  ticks: {min: 0, max:300000, fontSize : 10, fontFamily : 'Helvetica Neue',fontWeight: 600,fontColor : 'black', reverse: false ,beginAtZero: true}
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



