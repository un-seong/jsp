<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<form method="POST" action="cateList-action.jsp">
	<select name="category">
		<option value="">--고르세요--</option>
		<option value="치킨">치킨</option>
		<option value="버거">버거</option>
		<option value="스낵">스낵</option>
		<option value="음료">음료</option>	
	</select>
	<input type="submit">
</form>

</body>
</html>