<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입 페이지</title>
</head>
<body>
<form action="CWrite.jsp" method="post">
	이름: <input type="text" size=10 name="name"></input><br>
	비번: <input type="password" size=10 name="password"></input><br>
	내용: <input type="text" size=100 name="content"></input><br>
	<input type="submit" value="가입"><br>
	<input type="button" value="회원리스트" onclick="location.href='list.jsp'"/>
</form>

</body>
</html>