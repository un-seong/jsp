<%@page import="day03.Book"%>
<%@page import="day03.Handler"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Handler hd = (Handler)application.getAttribute("handler");
	String name = request.getParameter("name");
	Book ob = hd.search(name);
%>

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

<table>
	<tr>
		<th>등록번호</th>
		<th>도서명</th>
		<th>가격</th>
		<th>저자</th>
		<th>출판사</th>
	</tr>
	<tr>
		<td><%=ob.getIdx() %></td>
		<td><%=ob.getName() %></td>
		<td><%=ob.getPrice() %></td>
		<td><%=ob.getAuthor() %></td>
		<td><%=ob.getPublisher() %></td>
	</tr>
</table>

<a href="index.jsp"><button>홈으로!</button></a>