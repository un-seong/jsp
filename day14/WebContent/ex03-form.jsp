<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="ex03.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<c:set var="cpath" value="${pageContext.request.contextPath }" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="${cpath }/css/style.css">
	
</head>
<body>

<h1>이름, 생일, 이미지</h1>
<hr>

<form method="POST" enctype="multipart/form-data" action="ex03-action.jsp">
	<p><input type="text" name="name" placeholder="이름" required autofocus></p>
	<p><input type="date" name="birthDate" required></p>
	<p><input type="file" name="uploadFile"></p>
	<p><input type="submit" value="업로드"></p>
</form>

<c:set var="dao" value="${Ex03DAO.getInstance() }" />
<div id="root">
	<div class="wrap">
	
		<div class="item" style="background-color: #dadada;">
			<div class="idx">번호</div>
			<div class="name">이름</div>
			<div class="birth">생일</div>
			<div class="img">그림</div>		
		</div>
	
		<c:forEach var="dto" items="${dao.selectList() }">
			<div class="item">
				<div class="idx">${dto.idx }</div>
				<div class="name">${dto.name }</div>
				<div class="birth">${dto.birthDate }</div>
				<div class="img"><img src="D://upload/${dto.imgPath }" height="150px"></div>
			</div>		
		</c:forEach>
	</div>
</div>

</body>
</html>