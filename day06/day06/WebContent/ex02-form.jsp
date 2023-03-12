<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>ex02-form.jsp</title>
</head>
<body>

<h1>UPDOWN GAME</h1>
<hr>

<form method="POST" action="ex02-action.jsp">
	<input type="number" name="num" min="1" max="100" step="1" placeholder="1 ~ 100 사이 입력" required autofocus>
	<input type="submit">
</form>

<h3>${msg }</h3>

</body>
</html>