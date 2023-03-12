<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="restaurant-list.jsp" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	 p { 
	 	margin: 10px;
	 	
	 }
</style>

</head>
<body>

<br><br>
<hr>
<h3>추가할 항목을 선택하세요</h3>


<form action="restaurant-add-action.jsp" method="POST">
	<p>
		<label><input type="radio" name="rscategory" value='한식'>한식</label>
		<label><input type="radio" name="rscategory" value='중식'>중식</label>
		<label><input type="radio" name="rscategory" value='양식'>양식</label>
		<label><input type="radio" name="rscategory" value='일식'>일식</label>
		<label><input type="radio" name="rscategory" value='기타'>기타</label>
	</p>
	<p><input type="text" name="rsname" placeholder="식당 이름" required></p>
	<p><input type="text" name="rsaddress" placeholder="식당 주소" required></p>
	<p><input type="text" name="rsphone" placeholder="식당 번호" required></p>
	<p>
		<label><input type="radio" name="parking" value='Y'>Y</label>
		<label><input type="radio" name="parking" value='N'>N</label>
	</p>
	<p><input type="submit" value="추가하기"></p>
</form>
	


</body>
</html>