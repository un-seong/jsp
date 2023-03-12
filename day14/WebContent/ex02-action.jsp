<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<jsp:useBean id="fileUtil" class="ex02.FileUtil" scope="application"/>
<c:set var="dto" value="${fileUtil.getDTO(pageContext.request) }"></c:set>

<h3>${dto.uploadFile }</h3>
<c:redirect url="ex02-form.jsp" />

</body>
</html>