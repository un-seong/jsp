<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<jsp:useBean id="dao" class="product.ProductDAO" />

<jsp:useBean id="user" class="product.ProductDTO" />
<jsp:setProperty property="*" name="user"/>

<c:if test="${dao.update(user) != 0 }">
	<c:redirect url="list.jsp"></c:redirect>
</c:if>

<c:if test="${dao.update(param.idx) == 0 }">
	<c:redirect url="delete.jsp"></c:redirect>
</c:if>

</body>
</html>