<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="header.jsp" %>

<section>
	<fieldset>
		<legend>삭제</legend>
		${handler.delete(param.idx) == 1 ? '삭제성공' : '삭제실패' }
	</fieldset>
</section>

</body>
</html>