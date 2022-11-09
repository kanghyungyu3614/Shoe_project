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
			<span class="nav_detail"><a href="./noticeCreate.jsp">게시글만들기</a></span>
				<div id="notice_table_component">
					<table class="notice">
						<tr>
							<td>제목</td>
							<td>내용</td>
							<td>날짜</td>
						</tr>
						<tr>
							<td>제목</td>
							<td>내용</td>
							<td>날짜</td>
						</tr>			
					</table>
				
				</div>
			</div>
		</div>

</div>
</body>
</html>