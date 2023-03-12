<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="login.LoginDTO" %>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	
	
	h1 {
		font-size: 40px;
		font-weight: bold;
		padding-left: 15px;
	}

	ul {
		display: flex;
	}

	li {
		list-style: none;
	}
	
	li > a {
		font-size: 30px;
		font-weight: bold;
		padding-left: 15px;
	}
	
	a {
		text-decoration: none;
	}
	
	.login > h1, h3 {
		display: inline;
	}
	
	.login > h3 {
		margin-left: 20px;
	}
	
</style>
</head>
<body>

<%session.getAttribute("login"); %>


<div class="login">	
	<h1><a href="restaurant-index.jsp">맛집 관리</a></h1>
	<h3><a href="${empty login ? 'login.jsp' : 'logout.jsp' }">${empty login? '로그인' : '로그아웃' }</a></h3>
	<h3><a href="signup.jsp">회원가입</a></h3>
	<h3>${login } ㅇㅇ</h3>
</div>


<header>
	<nav>
		<ul>
			<li><a href="restaurant-list.jsp">목록</a></li>
			<li><a href="restaurant-add.jsp">추가</a></li>
			<li><a href="restaurant-update.jsp">수정</a></li>
			<li><a href="restaurant-delete.jsp">삭제</a><li>
		</ul>
	</nav>
</header>
<hr>

</body>
</html>
