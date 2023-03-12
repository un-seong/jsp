<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="restaurant-list.jsp" %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	form > input > .number {
		width: 150px;
		height: 30px;
	}
	
</style>

</head>
<body>

<br><br>
<hr>

<script>
	alert("삭제 시 주의해주세요!")
</script>

<h3>삭제할 번호를 입력하세요!</h3>

<form method="POST" action="restaurant-delete-action.jsp">
	<input class="number" type="number" name="idx" placeholder="주의하여 입력해주세요!">
	<input type="submit" value="삭제!">	
</form>

</body>
</html>