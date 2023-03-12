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
	body {
		width: 1920px;
		height: 1080px;
		margin: 0px;
		padding: 0px;
	}
	
	.header {
		display: flex;
		justify-content: center;
	}
	
	.header > .list, .chicken, .burger, .side, .drink, .address{
		margin: 40px;
	}
	
	
	.top {
		display: flex;
		margin: 10px 300px;
		justify-content: center;
		text-align: center;
	}
	
	.top > .kfc > h1 > a {
		text-decoration: none;
		color: red;
		font-size: 60px; 
		font-weight: bold;
		font-style: italic;
		margin-right: 200px;
	}
	
	.top > .util {
		justify-content: flex-end;
		margin-left: 300px;
	}
	
	.top > .util > a {
		text-decoration: none;
		color: black;
		margin: 0px 5px;
	}
	
	.nav {
		position: absolute;
		margin-left: 400px;
		margin-top: 70px;
	}


	.nav > .nav_menu > a {
		font-weight: bold;
		font-size: 20px;	
		margin: 0px 30px;
	}
		
	.list {
		position: relative;
		width: 54px;
		height: 60px;
		overflow: hidden;
	}
	
	.list > a > .allList {
		position: absolute;
		top: 0;
		left: 0;
		width: 54px;
		height: 120px;	
	}
	
	.list > a > .allList:hover {
		position: absolute;
		top: -107%;
		left: 0;
		width: 54px;
		height: 120px;		
	}
	
	.chicken {
		position: relative;
		width: 54px;
		height: 60px;
		overflow: hidden;
	}
	
	.chicken > .chicken_img {
		position: absolute;
		top: 0;
		left: 0;
		width: 54px;
		height: 120px;		
	}
	
	.chicken > a > .chicken_img:hover {
		position: absolute;
		top: -107%;
		left: 0;
		width: 54px;
		height: 120px;		
	}
	
	.burger {
		position: relative;
		width: 54px;
		height: 60px;
		overflow: hidden;
	}
	
	.burger > .burger_img {
		position: absolute;
		top: 0;
		left: 0;
		width: 54px;
		height: 120px;		
	}
	
	.burger > a > .burger_img:hover {
		position: absolute;
		top: -110%;
		left: 0;
		width: 54px;
		height: 120px;		
	}
	
	.side {
		position: relative;
		width: 54px;
		height: 60px;
		overflow: hidden;
	}
	
	.side > .side_img {
		position: absolute;
		top: 0;
		left: 0;
		width: 54px;
		height: 120px;		
	}
	
	.side > a > .side_img:hover {
		position: absolute;
		top: -110%;
		left: 0;
		width: 54px;
		height: 120px;		
	}
	
	.drink {
		position: relative;
		width: 54px;
		height: 60px;
		overflow: hidden;
	}
	
	.drink > .drink_img {
		position: absolute;
		top: 0;
		left: 0;
		width: 54px;
		height: 120px;		
	}
	
	.drink > a > .drink_img:hover {
		position: absolute;
		top: -110%;
		left: 0;
		width: 54px;
		height: 120px;		
	}
	
	.address {
		position: relative;
		width: 54px;
		height: 60px;
		overflow: hidden;
	}
	
	.address > .address_img {
		position: absolute;
		top: 0;
		left: 0;
		width: 54px;
		height: 120px;		
	}
	
	.address > a > .address_img:hover {
		position: absolute;
		top: -110%;
		left: 0;
		width: 54px;
		height: 120px;		
	}

	.main {
		margin: 30px 100px;
		text-align: center;
	}
	
	.main > .item {
		display: inline-block;
		vertical-align: top;
		width: 300px;
		height: 400px;
		margin: 20px 40px;
	}

	.item > p:nth-child(2) {
		font-size: 20px;
		font-weight: bold;
		margin: 5px;
	}
	
	.item > p:nth-child(3) {
		font-size: 13px;
		color: #666;
		height: 30px;
		margin: 0px;
	}
	
	.item > p:nth-child(4) {
		color: red;
		font-size: 20px;
	}
	
	.order {
		border: 2px solid black;
		padding: 8px 20px;
		color: black;
		text-decoration: none;
		border-radius: 30px;
		text-align: center;
	}
	
	.order:hover {
		background-color: black;
		color: white;
	}
	
	.cart {
		position: relative;
		width: 86px;
		height: 40px;
		overflow: hidden;
		border: 2px solid black;
		border-radius: 30px;
	}
	
	.cart > .cart_img {
		position: absolute;
		top: 0;
		left: 0;
		width: 54px;
		height: 60px;		
	}
	
	.cart > .cart_img:hover {
		position: absolute;
		top: 10%;
		left: 0;
		width: 54px;
		height: 60px;		
		background-color: black;
	}
	form {
		display: flex;
		justify-content: center;
		flex-direction: column;
		margin: 0px 30%;	
	}
	
	form > input, select {
		
		text-align: center;
		justify-content: center;
		margin: 10px 20px;
	}
	
	.table {
		display: flex;
		justify-content: center;
		align-items: center;
		margin-top: 20px;
	}
	
	table {
		border-collapse: collapse;
		text-align: center;
	}
	
	th, td {
		border: 1px solid black;
		padding: 5px 10px;
	}
	
	h3 {
		text-align: center;
	}
	
	a > button {
		text-align: center;
	}
</style>
</head>
<body>
	<div class="wrap">
		<div class="top">
			<div class="kfc">
				<h1><a href="index.jsp">KFC</a></h1>
			</div>
			
			<div class="util">
				<a href="https://www.kfckorea.com/member/login">로그인</a>
				<a href="https://www.kfckorea.com/guest/guestLogin">주문내역조회</a>
				<a href="https://www.kfckorea.com/service/customerCenter">고객센터</a>
				<a href="http://recruit.kfckorea.com/KOR/REC0001.aspx">인재채용</a>
				<img src="${cpath }/image/header/팝콘모양.png">
			</div>
			
			<div class="nav">
				<div class="nav_menu">
					<a>DELIVERY</a>
					<a>STORE</a>
					<a>EVENT</a>
					<a>KFC SERVICE</a>
				</div>			
			</div>		
		</div>
			
		
		
		
		<hr>
			<div class="fullList">
				<a href="allList.jsp">전체목록</a>
				<a href="cateList.jsp">분류별 목록</a>
				<a href="selectOne.jsp">단일조회</a>
				<a href="update.jsp">수정</a>
				<a href="add.jsp">추가</a>
				<a href="recover.jsp">복구</a>
				<a href="delete.jsp">삭제</a>
			</div>
		<hr>
	</div>
	
	
	
<div class="header">
	<div class="list">
		<a href="allList.jsp">
			<img class="allList" src="${cpath }/image/header/전체메뉴.png">
		</a>
	</div>

	<div class="chicken">
		<a href="cateList-action.jsp?category=치킨">
			<img class="chicken_img" src="${cpath }/image/header/치킨세트.png">
		</a>
	</div>
	
	<div class="burger">
		<a href="cateList-action.jsp?category=버거">
			<img class="burger_img" src="${cpath }/image/header/버거세트.png">
		</a>		
	</div>
	
	<div class="side">
		<a href="cateList-action.jsp?category=스낵">
			<img class="side_img" src="${cpath }/image/header/스낵사이드.png">
		</a>
	</div>
	
	<div class="drink">
		<a href="cateList-action.jsp?category=음료">
			<img class="drink_img" src="${cpath }/image/header/음료메뉴.png">
		</a>
	</div>
	
	<div class="address">
		<a href="#"><img class="address_img" src="${cpath }/image/header/주소등록.png"></a>		
	</div>
</div>
	
	
</body>
</html>