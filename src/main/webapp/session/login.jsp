<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	login.jsp<br>
	<% if(session.getAttribute("id")!=null){%>
		<script> 
		 alert("로그인 상태입니다.");
		 location.href="main.jsp";
		</script>
		<%}else{ %>
	
	<form action="chkUser.jsp" method="post">
		<input type="text" name="id"><br>
		<input type="password" name="pwd"><br>
		<input type="submit" value="로그인"><br>
	</form>
	<% } %>
</body>
</html>