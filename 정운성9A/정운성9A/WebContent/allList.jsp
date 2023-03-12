<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<div class="main">
	<c:forEach var="list" items="${dao.getList()}">
		<div class="item">
			<p><img src="image/${list.img }" width="300px;" height="200px;"></p>
			<p>${list.name }</p>
			<p>${list.memo }</p>
			<p><img src="${cpath }/image/main/원.png"> ${list.price }</p>
			<a class="order" href="#">바로주문</a>
		</div>
	</c:forEach>
</div>

</body>
</html>