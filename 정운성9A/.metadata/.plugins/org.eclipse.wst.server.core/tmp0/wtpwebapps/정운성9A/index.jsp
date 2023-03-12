<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<div class="imgList">
	<div class="menu">
		<a href="cateList-action.jsp?category=치킨"><img src="${cpath }/image/header/치킨.png"></a>
		<p>치킨</p>
	</div>
	
	<div class="menu">
		<a href="cateList-action.jsp?category=버거"><img src="${cpath }/image/header/버거.png"></a>
		<p>버거</p>
	</div>
	
	<div class="menu">
		<a href="cateList-action.jsp?category=스낵"><img src="${cpath }/image/header/스낵.png"></a>
		<p>스낵</p>
	</div>
	
	<div class="menu">
		<a href="cateList-action.jsp?category=음료"><img src="${cpath }/image/header/마실거.png"></a>
		<p>음료</p>
	</div>
</div>




<div class="fullList">
	<a href="allList.jsp">전체목록</a>
	<a href="cateList.jsp">분류별 목록</a>
	<a href="selectOne.jsp">단일조회</a>
	<a href="update.jsp">수정</a>
	<a href="add.jsp">추가</a>
	<a href="recover.jsp">복구</a>
	<a href="delete.jsp">삭제</a>
</div>



</body>
</html>