<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%@ include file="../main/mainhome.jsp"%>

<%session.setAttribute("lid", null); 

response.sendRedirect("http://localhost:8080/%ED%83%9C%EC%84%AD_%EA%B2%BD%EC%A3%BC%ED%8F%AC%ED%8F%B4/main/mainhome.jsp");%>

</body>
</html>