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

<% request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="dao" class="restaurant.RestaurantDAO" />

<jsp:useBean id="store" class="restaurant.RestaurantDTO" />
<jsp:setProperty property="*" name="store"/>

<c:if test="${dao.update(store) != 0 }">
	<c:redirect url="restaurant-list.jsp" />
</c:if>

<c:if test="${dao.update(store) != 0 }">
	<c:redirect url="restaurant-update-fome.jsp" />
</c:if>


<a href="restaurant-index.jsp"><button>홈으로</button></a>

</body>
</html>