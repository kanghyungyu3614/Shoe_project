<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 부트스트랩 css -->	
	  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
 
<link href="/shoesproject/css/sellove/sellove.css" rel="stylesheet"> 

</head>
<body>



<%@include file="../main/mainbaner.jsp" %>



<% if(lid==null){response.sendRedirect("/shoesproject/view/login.jsp");} %>



	<div class="mainComponent">	
	<a href="write.jsp"><button>셀럽만들기</button></a>
	<input type="hidden" value="${lid}" class="lid">
		
	<div class="selove5 row">
		
	</div>
	
</div>

 <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.min.js" integrity="sha384-IDwe1+LCz02ROU9k972gdyvl+AESN10+x7tBKgc9I5HFtuNz0wWnPclzo6p9vxnk" crossorigin="anonymous"></script>
 	
<script src="http://code.jquery.com/jquery-latest.min.js"></script>

<script type="text/javascript" src="../boardjs/sellove.js"></script>

</body>
</html>

<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 부트스트랩 css -->	
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">

</head>
<body>

<%@ include file="/main/mainhome.jsp"%>

<% if(lid==null){response.sendRedirect("/shoesproject/view/login.jsp");} %>



	<div>	
	<table class="selove5 table">
		<tr>
			<th>제목</th>
			<th style=" width: 10%">이미지</th>
			<th>아이디</th>
			
			
		</tr>
	</table>
	<a href="write.jsp"><button>글작성</button></a>
		
</div>

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.min.js" integrity="sha384-IDwe1+LCz02ROU9k972gdyvl+AESN10+x7tBKgc9I5HFtuNz0wWnPclzo6p9vxnk" crossorigin="anonymous"></script>
		
<script src="http://code.jquery.com/jquery-latest.min.js"></script>

<script type="text/javascript" src="../boardjs/sellove.js"></script>

</body>
</html> --%>