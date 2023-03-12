<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="정운성9A.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<c:set var="cpath" value="${pageContext.request.contextPath }" />
<c:set var="dao" value="${KfcDAO.getInstance()}" />
<% request.setCharacterEncoding("UTF-8"); %>




<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>정운성9A</title>
<style>
	.item {
		display: inline-flex;
		margin: 5px 10px;
	}	
	
	p {
		width: 300px;
		text-align: center;
	}

	.item > p:nth-child(2) {
		font-weight: bold;
		font-size: 15px;
	}

	.fullList {
		margin: 30px 15px;
	}
	
	.menu {
		display: flex;
		flex-direction: column;
	}
	
	.menu > p {
		margin: 0px;
		width: 55px;
		text-align: center;
	}
	
	table {
		border-collapse: collapse;
	}
	
	th, td {
		border: 1px solid black;
		margin: 5px 10px;
		text-align: center;
	}
	
	form {
		display: flex;
		flex-direction: column;
		width: 400px;		
	}
	
	
	
</style>
</head>
<body>
	<div class="wrap">
		<div class="top">
			<div>
				<h1><a href="index.jsp">KFC</a></h1>
			</div>
			
			<div>
				<a>로그인 |</a>
				<a>주문내역조회 |</a>
				<a>고객센터 |</a>
				<a>인재채용</a>
				<img src="#">
			</div>
			
			<div>
				<a>DELIVERY</a>
				<a>STORE</a>
				<a>EVENT</a>
				<a>KFC SERVICE</a>
			</div>		
			<hr>
		</div>
	</div>
</body>
</html>