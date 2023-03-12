<%@page import="java.util.ArrayList, day09.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex02-form.jsp</title>
</head>
<body>

<h1>세션쿠키를 활용한 자동 로그인</h1>
<hr>

<%
	request.setCharacterEncoding("UTF-8");
	ArrayList<Member> list = new ArrayList<Member>();

	Member ob1 = new Member("admin1", "123", "이모씨");
	Member ob2 = new Member("admin2", "123", "김모씨");
	Member ob3 = new Member("admin3", "123", "박모씨");
		
	list.add(ob1);
	list.add(ob2);
	list.add(ob3);
		
	session.setAttribute("list", list);
	
	if(session.getAttribute("login") != null) {
		response.sendRedirect("ex02-main.jsp");
	}
	
%>

<form action="ex02-action.jsp" method="POST">
	<p><input type="text" name="userid" placeholder="ID" required autofocus></p>
	<p><input type="password" name="userpw" placeholder="Password" required></p>
	<p>
		<label>
			<input type="checkbox" name="autologin" >자동 로그인
		</label>
	</p>
	<p><input type="submit" value="로그인"></p>
</form>

</body>
</html>