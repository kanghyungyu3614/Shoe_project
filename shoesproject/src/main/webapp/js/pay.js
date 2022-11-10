/* 아임포트 [ 결제 API ] */
function requestPay(  ) {
	var IMP = window.IMP;   // 생략 가능
	IMP.init("imp65467552"); // 예: imp00000000 
	IMP.request_pay({
		pg: "kcp",
		pay_method: "" ,
		merchant_uid: "", 
		name:"",
		amount: "",                     // 숫자타입
		buyer_email:"",     
		buyer_name: "",    
		buyer_tel: "",    
		buyer_addr: "",    
		buyer_postcode: "",    
	}, function(rsp) { // callback
		if (rsp.success) {// 결제 성공 시 로직,

		} else {// 결제 실패 시 로직 [ 테스트 -> 실패(성공)]

		}
	});
}

/*
	<!-- iamport.payment.js  [ 결제 API ]-->
	<script type="text/javascript"
		src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>
	<!-- 사용자 정의 JS 파일 -->
	<script src="/jspweb/js/product/pay.js" type="text/javascript"></script>
*/