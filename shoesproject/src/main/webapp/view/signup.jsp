<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="../css/member/signup.css" rel="stylesheet">
</head>
<body>

   <%@ include file="../main/mainbaner.jsp" %>

<div class="mainsize" id="mainsize">
<form class="lsignup" id="lsignup"  action="/shoesproject/shoe/signup" method="post">

   <h2 class="signsize"> 회원가입 </h2>



		<div class="insertbox">
			<div><input type="text" placeholder="이름" name="lname" id="lname" class="inputsize"></div>
			<div class="cocl3"></div>
	
		</div>
		<div class="insertbox">
			
			<div><input type="text" placeholder="아이디" name="lid" id="lid" onkeyup="log1()" class="inputsize"></div>
			<div class="cocl3"></div>
		</div>
		<div class="insertbox">
			<div><input type="text" placeholder="비밀번호 예)영문자 숫자 포함 10자 이상 작성" name="lpw" id="lpw" onkeyup="log2()" class="inputsize"></div>
			<div class="cocl3"></div>
			
		</div>
		<div class="insertbox">
			<div><input type="text" placeholder="전화번호 예)010-1234-5678 형식으로 작성" name="lph" id="lph" onkeyup="log3()" class="inputsize"></div>
			<div class="cocl3"></div>
			
		</div>
		<div class="insertbox">
			<div><input type="text" placeholder="이메일" name="lemail" id="lemail" onkeyup="log4()" class="inputsize"></div>
			<div class="cocl3"></div>
		</div>
		<div class="insertbox">
			<div> <input type="text" placeholder="발사이즈 예) 240mm"  name="lsize" id="lsize" onkeyup="log5()" class="inputsize"></div>
			<div class="cocl3"></div>
		</div>
		
	
	<div class="playrull">
		<h3>이용약관</h3>
		
			<span class="chek">
				<input type="checkbox" class="ckbox1" id="chek1">약관1
				<textarea rows="" cols="" readonly="readonly" style="resize: none;">1조(목적)
이 약관은 (주)디디에프앤씨(전자상거래 사업자)가 운영하는 반찬해결사(이하 "몰"이라 한다)에서 제공하는 인터넷 관련 서비스(이하 "서비스"라 한다)를 이용함에 있어 사이버 몰과 이용자의 권리·의무 및 책임사항을 규정함을 목적으로 합니다. 
※「PC통신, 무선 등을 이용하는 전자상거래에 대해서도 그 성질에 반하지 않는 한 이 약관을 준용합니다」 

제2조(정의)
① "몰" 이란 (주)디디에프앤씨가 재화 또는 용역(이하 "재화등"이라 함)을 이용자에게 제공하기 위하여 컴퓨터등 정보통신설비를 이용하여 재화등을 거래할 수 있도록 설정한 가상의 영업장을 말하며, 아울러 사이버몰을 운영하는 사업자의 의미로도 사용합니다.
② "이용자"란 "몰"에 접속하여 이 약관에 따라 "몰"이 제공하는 서비스를 받는 회원 및 비회원을 말합니다.
③ '회원'이라 함은 "몰"에 개인정보를 제공하여 회원등록을 한 자로서, "몰"의 정보를 지속적으로 제공받으며, "몰"이 제공하는 서비스를 계속적으로 이용할 수 있는 자를 말합니다.
④ '비회원'이라 함은 회원에 가입하지 않고 "몰"이 제공하는 서비스를 이용하는 자를 말합니다.

제3조 (약관등의 명시와 설명 및 개정)
① "몰"은 이 약관의 내용과 상호 및 대표자 성명, 영업소 소재지 주소(소비자의 불만을 처리할 수 있는 곳의 주소를 포함), 전화번호·모사전송번호·전자우편주소, 사업자등록번호, 통신판매업신고번호, 개인정보관리책임자등을 이용자가 쉽게 알 수 있도록 "몰"의 초기 서비스화면(전면)에 게시합니다. 다만, 약관의 내용은 이용자가 연결화면을 통하여 볼 수 있도록 할 수 있습니다.
② "몰은 이용자가 약관에 동의하기에 앞서 약관에 정하여져 있는 내용 중 청약철회·배송책임·환불조건 등과 같은 중요한 내용을 이용자가 이해할 수 있도록 별도의 연결화면 또는 팝업화면 등을 제공하여 이용자의 확인을 구하여야 합니다.
③ "몰"은 전자상거래등에서의 소비자보호에 관한법률, 약관의규제에관한법률, 전자거래기본법, 전자서명법, 정보통신망이용촉진등에관한법률, 방문판매등에관한법률, 소비자보호법 등 관련법을 위배하지 않는 범위에서 이 약관을 개정할 수 있습니다.
④ "몰"이 약관을 개정할 경우에는 적용일자 및 개정사유를 명시하여 현행약관과 함께 몰의 초기화면에 그 적용일자 7일이전부터 적용일자 전일까지 공지합니다. 다만, 이용자에게 불리하게 약관내용을 변경하는 경우에는 최소한 30일 이상의 사전 유예기간을 두고 공지합니다. 이 경우 "몰"은 개정전 내용과 개정후 내용을 명확하게 비교하여 이용자가 알기 쉽도록 표시합니다.
⑤ "몰"이 약관을 개정할 경우에는 그 개정약관은 그 적용일자 이후에 체결되는 계약에만 적용되고 그 이전에 이미 체결된 계약에 대해서는 개정전의 약관조항이 그대로 적용됩니다. 다만 이미 계약을 체결한 이용자가 개정약관 조항의 적용을 받기를 원하는 뜻을 제3항에 의한 개정약관의 공지기간내에 '몰"에 송신하여 "몰"의 동의를 받은 경우에는 개정약관 조항이 적용됩니다.
⑥ 이 약관에서 정하지 아니한 사항과 이 약관의 해석에 관하여는 전자상거래등에서의소비자보호에관한법률, 약관의규제등에관한법률, 공정거래위원회가 정하는 전자상거래등에서의소비자보호지침 및 관계법령 또는 상관례에 따릅니다.
</textarea>
			</span>
				
			<span class="chek">
				<input type="checkbox" class="ckbox2" id="chek2">약관2
				<textarea rows="" cols="" readonly="readonly" style="resize: none;">제4조(서비스의 제공 및 변경)
① "몰"은 다음과 같은 업무를 수행합니다. 재화 또는 용역에 대한 정보 제공 및 구매계약의 체결구매계약이 체결된 재화 또는 용역의 배송기타 "몰"이 정하는 업무
② "몰"은 재화 또는 용역의 품절 또는 기술적 사양의 변경 등의 경우에는 장차 체결되는 계약에 의해 제공할 재화 또는 용역의 내용을 변경할 수 있습니다. 이 경우에는 변경된 재화 또는 용역의 내용 및 제공일자를 명시하여 현재의 재화 또는 용역의 내용을 게시한 곳에 즉시 공지합니다.
③ "몰"이 제공하기로 이용자와 계약을 체결한 서비스의 내용을 재화등의 품절 또는 기술적 사양의 변경 등의 사유로 변경할 경우에는 그 사유를 이용자에게 통지 가능한 주소로 즉시 통지합니다.
④ 전항의 경우 "몰"은 이로 인하여 이용자가 입은 손해를 배상합니다. 다만, "몰"이 고의 또는 과실이 없음을 입증하는 경우에는 그러하지 아니합니다.

제5조(서비스의 중단)
① "몰"은 컴퓨터 등 정보통신설비의 보수점검·교체 및 고장, 통신의 두절 등의 사유가 발생한 경우에는 서비스의 제공을 일시적으로 중단할 수 있습니다.
② "몰"은 제1항의 사유로 서비스의 제공이 일시적으로 중단됨으로 인하여 이용자 또는 제3자가 입은 손해에 대하여 배상합니다. 단, "몰"이 고의 또는 과실이 없음을 입증하는 경우에는 그러하지 아니합니다.
③ 사업종목의 전환, 사업의 포기, 업체간의 통합 등의 이유로 서비스를 제공할 수 없게 되는 경우에는 "몰"은 제8조에 정한 방법으로 이용자에게 통지하고 당초 "몰"에서 제시한 조건에 따라 소비자에게 보상합니다. 다만, "몰"이 보상기준 등을 고지하지 아니한 경우에는 이용자들의 마일리지 또는 적립금 등을 "몰"에서 통용되는 통화가치에 상응하는 현물 또는 현금으로 이용자에게 지급합니다.

제6조(회원가입)
① 이용자는 "몰"이 정한 가입 양식에 따라 회원정보를 기입한 후 이 약관에 동의한다는 의사표시를 함으로서 회원가입을 신청합니다.
② 회원의 적립금 또는 혜택등을 통합하여 관리하기 위해 당사가 운영하는 "몰"인 “셰프반찬”과 “반찬해결사”중 1개 “몰”에 회원가입시 나머지 1개 “몰”에도 동시 가입됩니다.
기타 회원으로 등록하는 것이 "몰"의 기술상 현저히 지장이 있다고 판단되는 경우
③  "몰"은 제1항과 같이 회원으로 가입할 것을 신청한 이용자 중 다음 각호에 해당하지 않는 한 회원으로 등록합니다. 가입신청자가 이 약관 제7조제3항에 의하여 이전에 회원자격을 상실한 적이 있는 경우, 다만 제7조제3항에 의한 회원자격 상실후 3년이 경과한 자로서 "몰"의 회원재가입 승낙을 얻은 경우에는 예외로 한다.
등록 내용에 허위, 기재누락, 오기가 있는 경우
기타 회원으로 등록하는 것이 "몰"의 기술상 현저히 지장이 있다고 판단되는 경우
④ 회원가입계약의 성립시기는 "몰"의 승낙이 회원에게 도달한 시점으로 합니다.
⑤ 회원은 제15조제1항에 의한 등록사항에 변경이 있는 경우, 즉시 전자우편 기타 방법으로 "몰"에 대하여 그 변경사항을 알려야 합니다.

제7조(회원 탈퇴 및 자격 상실 등)
① 회원은 "몰"에 언제든지 탈퇴를 요청할 수 있으며 "몰"은 즉시 회원탈퇴를 처리합니다.
② 회원이 다음 각호의 사유에 해당하는 경우, "몰"은 회원자격을 제한 및 정지시킬 수 있습니다. 가입 신청시에 허위 내용을 등록한 경우
"몰"을 이용하여 구입한 재화등의 대금, 기타 "몰"이용에 관련하여 회원이 부담하는 채무를 기일에 지급하지 않는 경우
다른 사람의 "몰" 이용을 방해하거나 그 정보를 도용하는 등 전자상거래 질서를 위협하는 경우
"몰"을 이용하여 법령 또는 이 약관이 금지하거나 공서양속에 반하는 행위를 하는 경우
③ "몰"이 회원 자격을 제한·정지 시킨후, 동일한 행위가 2회이상 반복되거나 30일이내에 그 사유가 시정되지 아니하는 경우 "몰"은 회원자격을 상실시킬 수 있습니다.
④ "몰"이 회원자격을 상실시키는 경우에는 회원등록을 말소합니다. 이 경우 회원에게 이를 통지하고, 회원등록 말소전에 최소한 30일 이상의 기간을 정하여 소명할 기회를 부여합니다.
				</textarea>
			</span>	
		
	</div>
		<div>
			<button class="btnsize" type="button" onclick="signupbtn()"> 가입하기</button>
			<button class="btnsize" type="reset"> 취소하기 </button>
		</div>	

</form>

<!-- <form action="/태섭_경주포폴/member/signup" method="post" class="sign">

   <h1>회원가입</h1>
   
      <input type="text" placeholder="이름" id="s_name" name="s_name" onkeyup="namec()">
      <div class="m"></div>
      <input type="text" placeholder="아이디" id="s_id" onkeyup="idc()" name="s_id">
      <div class="m"></div>
      <input type="text" placeholder="비밀번호" id="s_pw" onkeyup="pwc()" name="s_pw">
      <div class="m"></div>
      
      <input type="text" placeholder="전화번호" id="s_ph" onkeyup="phc()" name="s_ph">
      <div class="m"></div>
      <input type="text" placeholder="주소" id="s_ad" name="s_ad">
      
      <input type="text" placeholder="발사이즈" id="s_size" onkeyup="sizec()" name="s_size">
      <div class="m"></div>
      <div class="signup">
      <button type="button" onclick="signup()" >가입하기</button>
      <button type="reset">취소하기</button>
      </div> 
   
   
</form> -->
</div>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>

<script type="text/javascript" src="../js/signup.js"></script>
</body>
</html>