<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="day08.*" %>
<%
	LoginHandler loginhandler = new LoginHandler();
%>    
    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quiz-action.jsp</title>
</head>
<body>

<jsp:useBean id="user" class="day08.Login" />
<jsp:setProperty property="*" name="user"/>

<%
	Login login = loginhandler.login(user);
	if(login != null) {
		session.setAttribute("login", login);%>
		<h3>${user.userid } 성공!</h3>
		<% String storeid = request.getParameter("storeid");
			if(storeid != null) {
				Cookie cookie = new Cookie("storeid", user.getUserid());
				cookie.setMaxAge(60*60*5);
				response.addCookie(cookie);
			}
		%>
	<%
	} else { %>
		<%Cookie cookie = new Cookie("storeid", null);
		cookie.setMaxAge(0);
		response.addCookie(cookie);
		%>
		<h3>로그인 실패!</h3>
		<%
	}
%>

<a href="quiz-form.jsp"><button>돌아가기</button></a>





</body>
</html>