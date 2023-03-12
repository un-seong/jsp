<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="header.jsp" %>

<form method="POST" action="login-action.jsp">
	<input type="text" name="userid" placeholder="아이디 입력" required>
	<input type="password" name="userpw" placeholder="비번 입력" required>
	<input type="submit" value="로그인 하기!"> 
</form>

</body>
</html>