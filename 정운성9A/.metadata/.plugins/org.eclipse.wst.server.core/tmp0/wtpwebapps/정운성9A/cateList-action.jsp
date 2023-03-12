<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<c:forEach var="cateList" items="${dao.cateList(param.category) }" >
	<div class=item>
		<div>
			<p><img src="image/${cateList.img }" width="200px;" height="200px;"></p>
			<p style="font-weight: bold; font-size: 15px;">${cateList.name }</p>
			<p>${cateList.memo }</p>
			<p style="color: red;">${cateList.price }</p>
		</div>
	</div>
</c:forEach>


</body>
</html>