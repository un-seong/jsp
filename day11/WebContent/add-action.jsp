<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
    
<%@ include file="header.jsp" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<jsp:useBean id="user" class="product.ProductDTO" />
<jsp:setProperty property="*" name="user"/>

<jsp:useBean id="dao" class="product.ProductDAO" />

<c:if test="${dao.insert(user) != 0 }">
	<c:redirect url="list.jsp"></c:redirect>
</c:if>

<c:if test="${dao.insert(user) == 0 }">
	<c:redirect url="add.jsp"></c:redirect>
</c:if>


</body>
</html>