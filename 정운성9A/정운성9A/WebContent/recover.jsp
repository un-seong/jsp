<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>


<form method="POST" action="recover-action.jsp">
	<fieldset style="width: 100px; margin-top: 30px;">
		<legend>복구</legend>
		<input type="number" name="idx" placeholder="복구 할 번호 입력">
		<input type="submit" value="번호로 복구">
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
	<c:forEach var="recover" items="${dao.showRecoverList() }">	
		<tr>
			<td>${recover.idx }</td>
			<td>${recover.name }</td>
			<td>${recover.price }</td>
			<td>${recover.category }</td>
			<td>${recover.memo }</td>
			<td>${recover.img }</td>
			<td>${recover.wtd }</td>		
		</tr>
	</c:forEach>
	</table>
</div>


</body>
</html>