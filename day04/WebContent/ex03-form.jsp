<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex03-form.jsp</title>
</head>
<body>

<h1>간단 입력 폼</h1>
<hr>

<form action="ex03-action.jsp" method="POST">
	<p><input type="text" name="name" placeholder="Name"></p>
	<p><input type="text" name="age" placeholder="Age"></p>
	<p><input type="submit" value="제출"></p>
</form>

</body>
</html>