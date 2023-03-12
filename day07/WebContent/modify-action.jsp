<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<jsp:useBean id="user" class="day07.Member" />
<jsp:setProperty property="*" name="user"/>


<%-- 내가 한것

	${ memberHandler.modify(user) == 1 ? '수정 성공' : '수정 실패' }

 --%>


<%
	int row = memberHandler.modify(user);
	if(row== -1) {
		%>
		<h3>수정 실패</h3>
		<button onclick="history.back()">뒤로가기</button>
		<%
	}
	else {
		response.sendRedirect(request.getContextPath() + "/logout.jsp");	
		// 정보가 수정되어서 세션의 정보와 실제 저장된 정보가 맞지 않는다
		// 강제 로그아웃 시킨 후 다시 확인하도록 유도한다
	}
	
%>


</body>
</html>