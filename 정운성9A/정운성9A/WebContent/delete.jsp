<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>


<form method="POST" action="delete-action-idx.jsp">
	<fieldset style="width: 100px; display: inline-block; align-items: center;">
		<legend>삭제할 번호</legend>
		<input type="number" name="idx" placeholder="삭제 할 번호 입력">
		<input type="submit" value="번호로 삭제">
	</fieldset>
</form>

<form method="POST" action="delete-action-name.jsp">
	<fieldset style="width: 100px; display: inline-block;">
		<legend>삭제할 이름</legend>
		<input type="text" name="name" placeholder="삭제 할 이름 입력">
		<input type="submit" value="이름으로 삭제">
	</fieldset>
</form>

<div class="table">
	<table>
		<tr>
			<th>idx</th>
			<th>name</th>
			<th>price</th>
			<th>category</th>
			<th>memo</th>
			<th>img</th>
			<th>wtd</th>
		</tr>
	<c:forEach var="delete" items="${dao.showDeleteList() }">	
		<tr>
			<td>${delete.idx }</td>
			<td>${delete.name }</td>
			<td>${delete.price }</td>
			<td>${delete.category }</td>
			<td>${delete.memo }</td>
			<td>${delete.img }</td>
			<td>${delete.wtd }</td>		
		</tr>
	</c:forEach>
	</table>
</div>


</body>
</html>