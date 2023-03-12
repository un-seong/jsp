<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="header.jsp" %>   
<table>
	<tr>
		<th>IDX</th>
		<th>ID</th>
		<th>PW</th>
		<th>NAME</th>
		<th>DATE</th>
		<th>GENDER</th>
		<th>PROFILEIMG</th>	
	</tr>
	<c:forEach var="user" items="${dao.showList() }">
	<tr>
		<td>${user.idx }</td>
		<td>
			<a href="${cpath }/detail.jsp?idx=${user.idx }">${user.userid }</a>
		</td>
		<td>${user.userpw }</td>
		<td>${user.username }</td>
		<td>${user.joindate }</td>
		<td>${user.gender }</td>
		<td>${user.profileimg }</td>
	</tr>
	</c:forEach>
</table>




</body>
</html>