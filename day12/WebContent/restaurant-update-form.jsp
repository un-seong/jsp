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

<jsp:useBean id="dao" class="restaurant.RestaurantDAO" />
<c:set var="store" value="${dao.searchOne(param.idx) }" />


<h1>수정 할 곳을 수정해 주세요!</h1>
<hr>

<form method="POST" action="restaurant-update-action.jsp">
	<p>고유 번호 : <input type="number" name="idx" value="${store.idx }" readonly ></p>
	<p>카테 고리 : 
		<select name="rscategory" required>
			<option value="">==카테고리를 고르세요==</option>
			<option value='한식' ${store.rscategory == '한식' ? 'selected' : '' }>한식</option>
			<option value='중식' ${store.rscategory == '중식' ? 'selected' : '' }>중식</option>
			<option value='양식' ${store.rscategory == '양식' ? 'selected' : '' }>양식</option>
			<option value='일식' ${store.rscategory == '일식' ? 'selected' : '' }>일식</option>
			<option value='기타' ${store.rscategory == '기타' ? 'selected' : '' }>기타</option>
		</select>
	</p>
	<p>가게 이름 : <input type="text" name="rsname" value="${store.rsname }"></p>
	<p>가게 주소 : <input type="text" name="rsaddress" value="${store.rsaddress }"></p>
	<p>전화 번호 : <input type="text" name="rsphone" value="${store.rsphone }"></p>
	<p>주차 여부 :
		<label><input type="radio" name="parking" value='Y' ${store.parking == 'Y' ? 'checked' : '' }>Y</label>
		<label><input type="radio" name="parking" value='N' ${store.parking == 'N' ? 'checked' : '' }>N</label>
	</p>
	<p><input type="submit" value="수정"></p>
</form>

</body>
</html>