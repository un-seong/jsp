<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<div class="main">
	<c:forEach var="cateList" items="${dao.cateList(param.category) }" >
		<div class=item>
			<p><img src="${cpath }/image/${cateList.img }" width="200px;" height="200px;"></p>
			<p>${cateList.name }</p>
			<p>${cateList.memo }</p>
			<p>${cateList.price }</p>
			<a class="order" href="#">바로주문</a>
		</div>
	</c:forEach>
</div>



</body>
</html>