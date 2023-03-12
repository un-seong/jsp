<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>list.jsp</title>
</head>
<body>

<h1>목록 출력</h1>
<hr>

<%@ page import="day07.MemberHandler, day07.Member, java.util.ArrayList" %>

<%
	MemberHandler memberHandler = new MemberHandler();
	ArrayList<Member> list = memberHandler.getList();
%>

<ol>
<%	
	for(Member m : list) {
		pageContext.setAttribute("m", m);
		%>
		<!-- 스크립틀릿을 중간에 한번 끊었다가 다시 열어주어도 된다 -->
		<li>
			${m.userid } / ${m.userpw } / ${m.username } /
			${m.age }	/ ${m.birth }
		</li>	
		<% 
	}
%>

</ol>
</body>
</html>