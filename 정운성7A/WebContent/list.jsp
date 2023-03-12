<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList"%>
    
    
<%@ include file="header.jsp" %>

<section>
	<table>
		<thead>
			<tr>
				<th>이름</th>
				<th>전화번호</th>
			</tr>
		</thead>
		
		<tbody>
		<%
			ArrayList<PhoneBook> list = hd.getList();
			for(PhoneBook phonebook : list) {
			pageContext.setAttribute("phonebook", phonebook);
		%>
			<tr>
				<td>${phonebook.name }</td>
				<td>${phonebook.number }</td>
				<td><a href="${cpath }/update.jsp?idx=${phonebook.idx }"><button>수정</button></a></td>
				<td><a href="${cpath }/delete.jsp?idx=${phonebook.idx }"><button>삭제</button></a></td>
			</tr>
		
		
		<% } %>
		</tbody>
	</table>
</section>

</body>
</html>