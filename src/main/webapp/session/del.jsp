<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>del 페이지</h1>
	<%
		 //session.removeAttribute("id");//하나의 세션만료
		 session.setMaxInactiveInterval(5); //시간설정 시간지나고 만료
	%>
	<a href = "set.jsp">set.jsp</a>
	<a href = "get.jsp">get.jsp</a>
</body>
</html>