<%@page import="day08.Product"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex03-detail.jsp</title>
</head>
<body>

<h1>상세 페이지</h1>
<hr>

<%@ page import="java.util.*" %>

<%
	int idx = Integer.parseInt(request.getParameter("idx"));

	ArrayList<Product> list = (ArrayList<Product>) application.getAttribute("list");
	
	Product product = null;
	for(Product p : list) {
		if(p.getIdx() == idx) {
			product = p;
			break;
		}
	}
	
	if(product == null) {
		response.sendRedirect("ex03.jsp");
	}
	pageContext.setAttribute("product", product);
%>

<div class="item">
	<div class="img">
		<a href="ex03-detail.jsp?idx=${product.idx }">
			<img src="img/${product.imgPath }" width="400">
		</a>
	</div>
	<div class="name">${product.name }</div>
	<div class="price">${product.price }원</div>
</div>

<a href="ex03.jsp"><button>목록으로</button></a>

<%
	Cookie cookie = new Cookie("recent", product.getIdx() + "");

	cookie.setMaxAge(60 * 5);
	
	response.addCookie(cookie);
%>


</body>
</html>