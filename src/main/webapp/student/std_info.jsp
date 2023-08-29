<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="dao.DBConnect"%>
<%@page import="java.sql.Connection"%>
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
	Connection con = DBConnect.getConnect();
	System.out.println("jsp => "+con);
	
	
	
	String sql = "select * from student where id=?";
	PreparedStatement ps = con.prepareStatement(sql);
	ps.setString(1, request.getParameter("id") );
	
	ResultSet rs = ps.executeQuery();
	while(rs.next()){ %>
	<h3>인적사항</h3>
		학번: <%= rs.getString("id") %><br>
		이름: <%= rs.getString("name") %><br>
		국,영,수: <%= rs.getString("kor") %> 
				<%= rs.getString("eng") %>
				<%= rs.getString("math") %><hr>
		<% } %>
	<button type="button" onclick="location.href='std_list.jsp';">뒤로</button>
	
</body>
</html>