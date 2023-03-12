<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>search.jsp</title>

<style>
	table {
		border-collapse: collapse;
	}
	
	td,th {
		border: 1px solid black;
		padding: 5px 10px;
	}
	
	a {
		text-decoration: none;
		color: inherit;
	}
</style>


</head>
<body>

<h1>도서 관리 프로그램 (GUI, Web)</h1>
<hr>

<nav>
	<ul>
		<li><a href="index.jsp">목록</a></li>
		<li><a href="add.jsp">추가</a></li>
		<li><a href="delete.jsp">삭제</a></li>
		<li><a href="search.jsp">검색</a></li>
		<li><a href="update.jsp">수정</a></li>
	</ul>
</nav>

<%@ page import="day03.*, java.util.ArrayList" %>

<form action="search-result.jsp">
	<h3>찾으실 책의 제목을 입력하세요</h3>
	<input type="text" name="name">
	<input type="submit" value="찾기"> 
</form>


</body>
</html>