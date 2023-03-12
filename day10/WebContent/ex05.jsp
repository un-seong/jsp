<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex05.jsp</title>
<style>

	div#wrap {
		width: 900px;
		display: flex;
		
	}
	
	div.item {
		width: 300px;
		display: flex;
		flex-flow: column;
		border: 1px solid black;
		text-align: center;
		margin: 20px;
	}
	
	.item > img {
		border-bottom:  2px solid black;
	}
	
	.item:hover {
		background-color: aqua;
}

</style>
</head>
<body>

<%
	String cpath = request.getContextPath();

%>


<h3>상품 목록</h3>
<hr>

<jsp:useBean id="dao" class="product.ProductDAO" />


<div id="wrap">

	<c:forEach var="pb" items="${dao.showList() }" >
	
		<div class="item">
			<a href="ex05-detail.jsp?idx=${pb.idx }" title="상세보기">
			<img src="<%=cpath %>/img/${pb.imgPath }" width="300px" height="300px"></a>
			<div>${pb.name }</div>
			<div>${pb.price }원</div>
		</div>
		
	</c:forEach>

</div>




</body>
</html>