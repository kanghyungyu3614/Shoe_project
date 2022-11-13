<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="../css/noticeBoard.css" rel="stylesheet">

</head>
<body>
<%@ include file="mainbaner.jsp" %>
<div id="main">
		<div class="nav_title">
			<div class="nav_content1">
			<span id="notice">공지사항</span>
				<div id="notice_table_component notice_table">
					<table class="notice" id="notice_table">
					<tr><th>제목</th><th>내용</th><th>날짜</th></tr>
					</table>
				</div>
			</div>
		</div>
</div>

	<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
	<script type="text/javascript" src="../js/viewdetailn.js" ></script>






</body>
</html>