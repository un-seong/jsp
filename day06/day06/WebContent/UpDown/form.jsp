<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>form</title>
</head>
<body>

<h1>업 다운 게임</h1>
<hr>

<form action="action.jsp" Method="POST">

	<h2>0 ~ 100 까지의 정수 중 하나를 입력하세요</h2>
	
	<input type="number" min="0" max="100" name="user" placeholder="정수 입력" required>
	<input type="submit" value="확인">


</form>



</body>
</html>