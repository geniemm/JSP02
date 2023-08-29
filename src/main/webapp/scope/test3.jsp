<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>test3.jsp 페이지</h3>
	  page :<%= pageContext.getAttribute("name") %><br>
	  request :<%= request.getAttribute("name") %><br>
	  session :<%= session.getAttribute("name") %><br>
	  application :<%= application.getAttribute("name") %><br>
	  <a href="test2.jsp">test2 설정 확인</a>
	  <a href="test1.jsp">test1 설정 이동</a>
</body>
</html>