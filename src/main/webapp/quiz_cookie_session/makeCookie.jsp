<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<script> window.close();</script>
	<%
		Cookie cookie = new Cookie("testCookie","myCookie");
		cookie.setMaxAge(3600);
		cookie.setPath("/");
		
		response.addCookie(cookie); 
	%>
</body>
</html>