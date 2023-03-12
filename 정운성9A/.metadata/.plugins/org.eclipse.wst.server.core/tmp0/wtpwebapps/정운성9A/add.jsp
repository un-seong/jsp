<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<form method="POST" action="add-action.jsp" enctype="multipart/form-data">
	<input type="text" name="name" placeholder="제품이름">
	<input type="number" name="price" placeholder="제품가격">
	<select name=category>
		<option value="">--선택하세요--</option>
		<option value="치킨">치킨</option>
		<option value="버거">버거</option>
		<option value="스낵">스낵</option>
		<option value="음료">음료</option>
	</select>	
	<input type="text" name="memo" placeholder="제품 설명">
	<input type="file" name="img" placeholder="제품이미지">
	<input type="hidden" name="wtd" value="Y">
	<input type="submit">
</form>


</body>
</html>