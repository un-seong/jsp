<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<% request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="dao" class="login.LoginDAO" />

<jsp:useBean id="user" class="login.LoginDTO" />
<jsp:setProperty property="*" name="user"/>

<h3>${dao.insert(user) == 1 ? '추가 성공' : '추가 실패' }</h3>
<a href="restaurant-index.jsp"><button>홈으로</button></a>
</body>
</html>