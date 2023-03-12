<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<section>
	<%
		if(request.getMethod().equals("GET")) {
			
			int idx = Integer.parseInt(request.getParameter("idx"));
			pageContext.setAttribute("phonebook", hd.getperson(idx));
	%>
	
	<form method="POST">
		<input type="hidden" name="idx" value="${phonebook.idx }">
		<p><input type="text" name="name" placeholder="${phonebook.name }" required></p>
		<p><input type="text" name="number" placeholder="${phonebook.number }" required></p>
		<p><input type="submit" value="수정"></p>
		<a href="${cpath }/list.jsp"><button type="button">목록으로</button></a>	
	</form>
	
	<% } %>
	
	<% if(request.getMethod().equals("POST")) { %>
	
	<jsp:useBean id="phone" class="정운성7A.PhoneBook" />
	<jsp:setProperty property="*" name="phone"/>
	
	<section>
		<fieldset>
			<legend>수정</legend>
			${handler.update(phone) >= 0 ? '수정 성공' : '수정 실패' }
		</fieldset>
	</section>
	
	
	<% } %>
	

</section>

</body>
</html>