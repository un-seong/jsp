<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	table {
		border-collapse: collapse;
		border: 2px solid black;
	}
	
	th, td {
		border: 1px solid black;
		margin: 10px;
		padding: 10px 20px;
	}
</style>

</head>
<body>

<jsp:useBean id="dao" class="product.ProductDAO" />

<table>
	<tr>
		<th>IDX</th>
		<th>NAME</th>
		<th>PRICE</th>
		<th>IMGPATH</th>
	</tr>	
	<c:forEach var="user" items="${dao.showList() }" >
	<tr>
		<th>${user.idx }</th>
		<th>${user.name }</th>
		<th>${user.price }</th>
		<th>${user.imgPath }</th>
	</tr>
	</c:forEach>
</table>


</body>
</html>