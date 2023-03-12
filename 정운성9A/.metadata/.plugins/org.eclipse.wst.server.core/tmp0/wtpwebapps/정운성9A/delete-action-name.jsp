<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<c:set var="deleteName" value="${dao.deleteName(param.name) }" />

<h3>${param.name }</h3>
<h3>${deleteName }</h3>

<c:if test="${deleteName != 0 }">
	<h3>삭제 성공</h3>
	<a href="index.jsp"><button>홈으로</button></a>
</c:if>

<c:if test="${deleteName == 0 }">
	<h3>삭제 실패</h3>
	<a href="index.jsp"><button>홈으로</button></a>
</c:if>

</body>
</html>