<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="day09.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	if(session.getAttribute("login") == null) {
		response.sendRedirect("T-form.jsp");
		return; // 안써도 상관없음
	}

%>

<h3>
	${login.username }
	(${login.userid })
	님 로그인 성공, 안녕하세요!
</h3>


<a href="T-logout.jsp"><button>로그아웃</button></a>


</body>
</html>