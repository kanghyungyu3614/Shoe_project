<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>문의</title>
</head>
<body>

	<!-- 문의 조회 -->
	<div>
		<h3> 문의 조회 </h3>
		<table>
			<tr> <td> 번호 <td> 	<td class="qnum"> 		</td> </tr>
			<tr> <td> 제목 <td> 	<td class="qtitle">  	</td> </tr>
			<tr> <td> 내용 <td> 	<td class="qcontent"> 	</td> </tr>
			<tr> <td> 첨부파일 <td> <td class="qfile"> 	</td> </tr>
		</table>

		<!-- 문의 답변  -->
		<div class="replybox">
			<textarea rows="" cols="" class="rcontent"></textarea>
			<button type="button" onclick="rwrite()"> 문의 답변 </button>
		</div>
		<!-- 문의 답변 출력 -->
		<div class="replylist">
		
		</div>
	</div>
	
</body>
</html>