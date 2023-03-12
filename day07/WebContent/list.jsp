<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="header.jsp" %>

<ol>
<%	
	for(Member m : memberHandler.getList()) {
		pageContext.setAttribute("m", m);
		%>
		<!-- 스크립틀릿을 중간에 한번 끊었다가 다시 열어주어도 된다 -->
		<li>
			${m.userid } / ${m.userpw } / ${m.username } /
			${m.age }	/ ${m.birth }
		</li>	
		<% 
	}
%>

</ol>
</body>
</html>