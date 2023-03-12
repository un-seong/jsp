<%@page import="org.apache.jasper.tagplugins.jstl.core.Param"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="login.LoginDTO" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<% request.setCharacterEncoding("UTF-8"); %>
<% request.getParameter("userid"); %>

<jsp:useBean id="dao" class="login.LoginDAO" />

<c:if test="${dao.login(param.userid, param.userpw) != null }">
	<%
		LoginDTO login = new LoginDTO();
		session.setAttribute("login", login);
	%>
	<c:redirect url="restaurant-index.jsp" />
</c:if>

<c:if test="${dao.login(param.userid, param.userpw) == null }">
	<c:redirect url="login.jsp" />
</c:if>

</body>
</html>