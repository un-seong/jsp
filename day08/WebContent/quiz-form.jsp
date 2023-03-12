<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quiz-form.jsp</title>
</head>
<body>

<h1>로그인 창에서 자동 아이디 저장</h1>
<hr>
<!-- 
	로그인 성공 && 체크박스 체크 => 쿠키에 userid를 저장
	로그인 실패 || 체크박스 체크안함 => 쿠키를 제거
 -->

<%
	String cookieValue = "";

	Cookie[] cookies = request.getCookies();
	
	for(int i = 0; cookies != null && i<cookies.length; i++) {
		Cookie c = cookies[i];
		if(c.getName().equals("storeid")) {
			cookieValue = c.getValue();
			break;
		}
	}

%>

<form method="get" action="quiz-action.jsp">
	<p><input type="text" name="userid" placeholder="ID" value="${cookie.storeid.value }" required autofocus></p>
	<p><input type="password" name="userpw" placeholder="Password" required></p>
	
	<p>
		<label>
			<input type="checkbox" name="storeid">
			ID 저장
		</label>
	</p>
	<p><input type="submit" value="로그인"></p>

</form>

</body>
</html>