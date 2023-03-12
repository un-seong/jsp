<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex05-detail.jsp</title>
</head>
<body>


<%
	String cpath = request.getContextPath();
%>

<h1>${param.idx }번 상품 상세보기</h1>
<hr>

<jsp:useBean id="dao" class="product.ProductDAO" />

<c:set var="pb" value="${dao.selectOne(param.idx) }" />

<div class="pb">
	<div class="item">
		<img src="<%=cpath %>/img/${pb.imgPath }" width="300px" height="300px">
		<div>${pb.name }</div>
		<div>${pb.price }원</div>
	</div>
</div>


</body>
</html>