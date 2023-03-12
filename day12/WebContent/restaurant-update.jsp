<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="restaurant-list.jsp" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	form {
		margin-left: 15px;
	}
	
	form > input > .number {
		width: 150px;
		height: 30px;
	}

</style>
</head>
<body>

<hr>

<h3>수정할 번호를 입력하세요!</h3>


<form action="restaurant-update-form.jsp">
	<input class="number" type="number" name="idx" placeholder="불러올 번호 입력">
	<input type="submit" value="수정">
</form>

</body>
</html>