<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="header.jsp" %>

<section>
	<% if(request.getMethod().equals("GET")) { %>
		<form method="POST">
			<p><input type="text" name="name" placeholder="이름을 입력하세요" required></p>
			<p><input type="text" name="number" placeholder="번호를 입력하세요" required></p>
			<p><input type="submit" value="추가"></p>
			<a href="${cpath }/list.jsp"><button type="button">목록으로</button></a>
		</form>
	
	<% } %>
	
	<% if(request.getMethod().equals("POST")) { %>
		
		<jsp:useBean id="phone" class="정운성7A.PhoneBook" scope="page" />
		<jsp:setProperty property="*" name="phone"/>
		
		<section>
			<fieldset>
				<legend>추가</legend>
				${handler.insert(phone) == 1 ? '추가 성공' : '추가 실패' }
			</fieldset>
		</section>
		
	
	
	<% } %>

</section>

</body>
</html>