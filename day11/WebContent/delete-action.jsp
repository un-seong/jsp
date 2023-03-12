<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="header.jsp" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<jsp:useBean id="dao" class="product.ProductDAO" />

<c:if test="${dao.delete(param.idx) == 1 }">
	<c:redirect url="list.jsp"></c:redirect>
</c:if>

<c:if test="${dao.delete(param.idx) == 0 }">
	<c:redirect url="delete.jsp"></c:redirect>
</c:if>

</body>
</html>