<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page language="java" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	String name=request.getParameter("name");
	String password=request.getParameter("password");
	String content=request.getParameter("content");

	String DB_URL="jdbc:oracle:thin:@10.211.55.3:1521:ORCL";
	
	String DB_USER = "system";
	String DB_PASSWORD = "12345";
	
	Connection con = null;
	PreparedStatement pstmt = null;  
	ResultSet rs = null;
	String sql="insert into comments(seq, name, pass, content) values((select max(seq)+1 from comments),?,?,?)";
	
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		con=DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
	}catch(SQLException e){out.println(e);}
	pstmt = con.prepareStatement(sql);
	pstmt.setString(1,name);
	pstmt.setString(2,password);
	pstmt.setString(3,content);
	pstmt.executeUpdate();
	
	pstmt.close();
	con.close();
	
%>
</body>
</html>