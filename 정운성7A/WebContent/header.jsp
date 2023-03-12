<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="정운성7A.*" %>
    
<%
	request.setCharacterEncoding("UTF-8");
	pageContext.setAttribute("cpath", request.getContextPath());
	
	Handler hd = (Handler)application.getAttribute("handler");
	if(hd == null) {
		hd = new Handler();
		application.setAttribute("handler", hd);
	}

%> 
    
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>전화번호부 - 정운성7A</title>
<style>
	
	header, nav, main, aside, section {
		margin: 0;
		padding: 0;
	}
	
	main {
		display: flex;
		width: 900px;
		magin: auto;
	}
	
	header {
		padding-left: 20px;
		background-color: salmon;
	}
	
	aside {
		width: 20%;
		background-color: lightgoldenrodyellow; 
	}
	
	section {
		width: 80%;
	}
	
	section > form {
		margin-left: 15px; 
	}
	
	section > form > a {
		display: inline;
	}
	
	a {
		text-decoration: none;
		color: inherit;
	}
	
	a:hover {
		text-decoration: underline;
	}
	
	h1, h2, h3, h4, h5, h6 {
		margin: 0;
		padding: 0;	
	}
	
	table {
		border-collapse: collapse;
		width: 600px;
		margin: 20px auto;
	}
	
	th, td {
		padding: 5px 10px;
		border: 1px solid black;
		text-align: center;
	}
	
	th:nth-child(2) {
		width: 150px;
	}	
		
	thead th {
		background-color: black;
		color: white;
		padding: 5px 10px;
	}
	tbody td {
		padding: 5px 10px;
	}
	
	tbody td:first-child {
		text-align: center;
	}
		
	tbody > tr > td:nth-child(3),
	tbody > tr > td:nth-child(4) {
		border: 0px;
		visibility: hidden;
	}
	
	tbody > tr:hover > td:nth-child(3),
	tbody > tr:hover > td:nth-child(4) {
		border: 1px solid black;
		visibility: visible;
	}
	
	

</style>

</head>
<body>

<header>
	<h1><a href="${cpath }">전화번호부</a></h1>
</header>

<main>
	<aside>
		<nav>
			<ul>
				<li><a href="${cpath }/list.jsp">전체목록</a></li>
				<li><a href="${cpath }/add.jsp">생성</a></li>				
			</ul>
		</nav>
	</aside>


