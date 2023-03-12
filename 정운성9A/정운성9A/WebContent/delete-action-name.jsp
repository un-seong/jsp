<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<c:set var="deleteName" value="${dao.deleteName(param.name) }" />

<c:if test="${deleteName != null }">
	<h3>삭제 성공</h3>
	<a href="index.jsp" style="display: flex; justify-content: center; text-decoration: none;"><button>홈으로</button></a>
</c:if>

<c:if test="${deleteName == null }">
	<h3>삭제 실패</h3>
	<a href="index.jsp" style="display: flex; justify-content: center; text-decoration: none;"><button>홈으로</button></a>
</c:if>

</body>
</html>