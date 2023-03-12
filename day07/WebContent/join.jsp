<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
    
<%@ include file="header.jsp" %>


<form action="join-action.jsp" method="POST">
	<input type="text" name="userid" placeholder="가입할 ID 입력" required>
	<input type="password" name="userpw" placeholder="가입할 PW 입력" required>
	<input type="text" name="username" placeholder="이름 입력" required>
	<input type="number" name="age" placeholder="나이 입력" required>
	<input type="date" name="birth" placeholder="생일 입력(yyyy-MM-dd)" required>
	<input type="submit" value="가입하기!">
</form>

</body>
</html>