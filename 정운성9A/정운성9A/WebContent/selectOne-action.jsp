<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<div class="main">
	<c:set var="select" value="${dao.selectOne(param.name) }" />
	<div class="item">
		<p><img src="${cpath }/image/${select.img }" width="200px;" height="200px;"></p>
		<p>${select.name }</p>
		<p>${select.memo }</p>
		<p>${select.price }</p>
		<a class="order" href="#">바로주문</a>
	</div>
</div>
</body>
</html>