<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="day09.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>




<%
	Handler handler = (Handler)application.getAttribute("handler");
	if(handler == null) {
		handler = new Handler();
		application.setAttribute("handler", handler);
	}

%>


 <jsp:useBean id="user" class="day09.Member" />
 <jsp:setProperty property="*" name="user"/>
 
 <%
 	Member login = handler.login(user);
 
 	if(login == null) {
 		response.sendRedirect("T-form.jsp");
 	}
 	else {
 		session.setAttribute("login", login);
 		
 		if(request.getParameter("autologin") != null) {
 			Cookie cookie = new Cookie("JSESSIONID", session.getId());
 			cookie.setMaxAge(60 * 60 * 24);
 			response.addCookie(cookie);
 		}
 		
 		response.sendRedirect("T-main.jsp");
 	}

%>



</body>
</html>