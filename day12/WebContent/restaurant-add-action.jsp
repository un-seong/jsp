<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<% request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="store" class="restaurant.RestaurantDTO" />
<jsp:setProperty property="*" name="store"/>

<jsp:useBean id="dao" class="restaurant.RestaurantDAO" />

<c:if test="${dao.insert(store) != 0}">
	<c:redirect url="restaurant-list.jsp" />
</c:if>

<c:if test="${dao.insert(store) == 0}">
	<c:redirect url="restaurant-index.jsp" />
</c:if>

<a href="restaurant-list.jsp"><button>목록보기!</button></a>




</body>
</html>