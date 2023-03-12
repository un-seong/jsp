<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex01_form.jsp</title>
</head>
<body>

<h1>가위바위보</h1>
<hr>


<form action="ex01_action.jsp">	<!-- 만약 여기서 method="POST" 를 사용하여 주소창을 통해 값을 넘기지 않더라도, 코드는 똑같이 실행됨 -->
	<label><input type="radio" name="user" value="2">가위</label>
	<label><input type="radio" name="user" value="0">바위</label>
	<label><input type="radio" name="user" value="1">보</label>
	<input type="submit" value="확인">
</form>

</body>
</html>