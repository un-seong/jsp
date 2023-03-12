<%@ page import="java.util.Date"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>index.jsp</title>
</head>
<body>

<h1>로그인 화면 (boundery)</h1>
<hr>

<form method="POST" action="Login-control.jsp">
	<p><input type="text" name="id" placeholder="ID" autocomplete="off" required autofocus></p>
	<p><input type="password" name="pw" placeholder="Password" required></p>
	<p><input type="submit" value="로그인"></p>
</form>

<%
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy년 MM월 dd일 hh시 mm분 ss초");
	String now = sdf.format(new Date());
%>

<h3>지금은 <%=now %>입니다</h3>
<h3>서버의 주소는 <%=request.getServerName() %> 입니다</h3>
<h3>클라이언트의 주소는 <%=request.getRemoteAddr() %> 입니다</h3>



</body>
</html>