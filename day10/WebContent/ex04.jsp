<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex04.jsp</title>

<style>
	table {
		border: 2px solid black;
		border-collapse: collapse;
	}
	
	thead th {
		background-color: #dadada;
	}
	
	td, th {
		padding: 10px 20px;
		border: 1px solid grey;
	}
</style>


</head>
<body>

<h3>상품 목록</h3>
<hr>


<form>
	<p>
		<input type="search" name="keyword" placeholder="검색" autocomplete="off">
		<input type="submit" value="검색">
	</p>
</form>



<table>
	<thead>
		<tr>
			<th>IDX</th>
			<th>NAME</th>
			<th>PRICE</th>
			<th>IMGPATH</th>
		</tr>
	</thead>
	<jsp:useBean id="dao" class="product.ProductDAO" />
	<c:forEach var="pb" items="${empty param.keyword ? dao.showList() : dao.showListByName(param.keyword) }">
	<tr>
		<td>${pb.idx }</td>
		<td>${pb.name }</td>
		<td>${pb.price }</td>
		<td>${pb.imgPath }</td>
	</tr>
	</c:forEach>
	

</table>

</body>
</html>