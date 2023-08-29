<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>CARE LAB</h1>
	<% 
		boolean bool = true;
		Cookie[] cookieArr = request.getCookies(); // 사용자의 요청있으면 쿠키값을 모두 갖고온다.
		if(cookieArr != null){
			for(Cookie c : cookieArr){
				out.print("name:"+c.getName()+"<br>");
				out.print("value:"+c.getValue()+"<br>");
				if(c.getName().equals("testCookie")){
					bool = false;
				}
			}
		}
		// 최초요청시에는 아래의 쿠키생성값이 안들어가니까 위에 값에 출력이안되는거고
		// 새로고침 이후부터는 아래 생성된 쿠키값이 들어가게된다.
		Cookie cookie = new Cookie("testCookie","myCookie");
		cookie.setMaxAge(5);
		cookie.setPath("/"); // "/"로 시작하는 경로에서는 이 쿠키를 사용할수있다.
		
		response.addCookie(cookie);
	%>
	<%if(bool){ %>
		<script type="text/javascript">
			window.open("popup.jsp","","width=300,height=200,top=500,left=500");
		</script>
	<%}%>
</body>
</html>