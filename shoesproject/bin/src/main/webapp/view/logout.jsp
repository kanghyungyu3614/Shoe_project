<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%@ include file="/main/mainbaner.jsp"%>

<%session.setAttribute("lid", null);

response.sendRedirect("/shoesproject/main/mainhome.jsp");
%>

</body>
</html>