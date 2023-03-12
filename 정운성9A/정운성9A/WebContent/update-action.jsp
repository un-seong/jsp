<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<jsp:useBean id="menu" class="정운성9A.KfcDTO" />
<jsp:setProperty property="*" name="menu"/>

<c:set var="update" value="${dao.update(menu) }" />

<c:if test="${update != 0 }">
	<h3>수정 성공!</h3>
	<a href="index.jsp" style="display: flex; justify-content: center; text-decoration: none;"><button>홈으로</button></a>
</c:if>

<c:if test="${update == 0 }">
	<h3>수정 실패 ㅠㅠ</h3>
	<a href="index.jsp" style="display: flex; justify-content: center; text-decoration: none;"><button>홈으로</button></a>
</c:if>



</body>
</html>