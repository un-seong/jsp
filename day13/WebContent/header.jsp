<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="member2.MemberDAO" %>
<% request.setCharacterEncoding("UTF-8"); %>

<c:set var="cpath" value="${pageContext.request.contextPath }" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<c:set var="dao" value="${MemberDAO.getInstance() }" />

<h3>회원 목록 보기!</h3>
<hr>

