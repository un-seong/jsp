<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="login-action.jsp" method="POST">
	<p><input type="text" name="userid" placeholder="ID"></p>
	<p><input type="text" name="userpw" placeholder="Password"></p>
	<p><input type="submit" value="로그인"></p>
	<a href="signup.jsp"><button type="button">회원가입</button></a>
</form>


</body>
</html>