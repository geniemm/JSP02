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
	
	String sql = "select * from student";
	PreparedStatement ps = con.prepareStatement(sql);
	ResultSet rs = ps.executeQuery(); %>
	
	<table border="1">
		<tr><th>학번</th><th>이름</th><th>국어</th><th>영어</th><th>수학</th></tr>
		<% 
		while(rs.next()){
				
				%>
			<tr>
			<td><%= rs.getString("id") %></td>
			<td>
			<a href = "std_info.jsp?id=<%= rs.getString("id") %>"><%= rs.getString("name") %></td>
			<td><%= rs.getString("kor") %></td>
			<td><%= rs.getString("eng") %></td>
			<td><%= rs.getString("math") %></td>
			<% } %>
			</tr>
			
	</table>
	
	
</body>
</html>