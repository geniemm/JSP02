<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 	<h3>게시글 입니다</h3>
 	<h4>공지사항 입니다.</h4>
 	<br>
 	jsp application을 이용한<br>
 	조회수 올리기 문제입니다<br>
 	<% 
		 Integer count = (Integer)application.getAttribute("count"); 
		 count++;
		
		 application.setAttribute("count",count);
	%>
	

 <a href="form.jsp">돌아가기</a> 

</body>
</html>