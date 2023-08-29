<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>	
		
		<%
		if(session.getAttribute("id")==null){ %>
			<script type="text/javascript">
				 alert("로그인이 필요한 화면입니다.");
				 location.href="login.jsp";
			</script>
		 <% 
			//response.sendRedirect("login.jsp");
		 	}
		 %>
		main.jsp<br>
	
		<%= session.getAttribute("nick") %>님 환영합니다!<br>
		로그인 성공한 사용자만 접근 가능합니다.
		<hr>
		<a href ="logout.jsp">로그아웃</a>
		<a href = "login.jsp" >로그인 페이지 이동</a> 
	
</body>
</html>