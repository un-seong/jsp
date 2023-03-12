<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	h1 {
		font-size: 35px;
		font-weight: bold;
	}
	table {
		border: 3px solid black;
		border-collapse: collapse;
		margin: 15px;
	}
	
	th, td {
		border: 1px solid black;
		margin: 15px;
		padding: 10px 20px;
	}
	
	th {
	 	background: black;
	 	color: white;
	}
	
	a > button {
	 margin-left: 15px;
	}

</style>
</head>
<body>

<jsp:useBean id="dao" class="restaurant.RestaurantDAO" />

<h1>우리가 정한 맛집 목록!</h1>
<hr>


<table>
	<tr>
		<th>관리번호</th>
		<th>카테고리</th>
		<th>식당이름</th>
		<th>주소</th>
		<th>전화번호</th>
		<th>주차 여부</th>
		<th>등록날짜</th>
	</tr>
	<c:forEach var="rs" items="${dao.showList() }">
	<tr>
		
			<td>${rs.idx }</td>
			<td>${rs.rscategory }</td>
			<td>${rs.rsname }</td>
			<td>${rs.rsaddress }</td>
			<td>${rs.rsphone }</td>
			<td>${rs.parking }</td>
			<td>${rs.joindate }</td>
		
	</tr>
	</c:forEach>
	
</table>

<a href="restaurant-index.jsp"><button>홈으로!</button></a>



</body>
</html>