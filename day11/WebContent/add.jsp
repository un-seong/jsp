<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="list.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<form method="POST" action="add-action.jsp">
	<p><input type="number" name="idx" placeholder="idx" required></p>
	<p><input type="text" name="name" placeholder="name" required></p>
	<p><input type="number" name="price" placeholder="price" required></p>
	<p><input type="text" name="imgPath" placeholder="imgPath" required></p>
	<p><input type="submit" value="추가"></p>
</form>

</body>
</html>