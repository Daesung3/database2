<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page contentType="text/html; charset=UTF-8" import="java.sql.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
	request.setCharacterEncoding("UTF-8");
	String seq=request.getParameter("seq");

	
	String DB_URL="jdbc:oracle:thin:@127.0.0.1:1521:ORCL";
	
	String DB_USER = "wlgur";
	String DB_PASSWORD = "cjswo";
	
	Connection con = null;
	PreparedStatement pstmt = null;  
	ResultSet rs = null;
	
	
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		con=DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
		
		String sql="delete from comments where seq=?";
		pstmt = con.prepareStatement(sql);
		pstmt.setInt(1,Integer.parseInt(seq));
		pstmt.executeUpdate();
		
		pstmt.close();
		con.close();
		response.sendRedirect("list.jsp");

		
		
	}catch(SQLException e){out.println(e);}
	
	
%>

</body>
</html>