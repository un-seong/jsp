<%@page import="org.eclipse.jdt.internal.compiler.batch.Main"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="day09.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex02-action.jsp</title>
</head>
<body>

<%
	ArrayList<Member> list = (ArrayList<Member>) session.getAttribute("list");
%>

<%--
		form에서 입력받은 데이터로 로그인을 판별하여 세션에 저장
		필요하다면 쿠키도 활용하여 처리함
		성공하면 main 으로 이동
		실패하면 form 으로 다시 이동
		
		자동로그인에 체크했다면 현재 세션의 id를 쿠키에 저장(24시간)
 --%>
 
 <jsp:useBean id="user" class="day09.Member" />
 <jsp:setProperty property="*" name="user"/>


<%
	Member login = null;
	for(Member mem : list) {
		if(mem.getUserid().equals(user.getUserid()) && mem.getUserpw().equals(user.getUserpw())) {
			login = mem;
			break;
		}
	}

%> 	

<%
	if(login == null) {
		response.sendRedirect("ex02-form.jsp");
	}
	else {
		session.setAttribute("login", login);
		
		if(request.getParameter("autologin") != null) {
			Cookie cookie = new Cookie("JSESSIONID", session.getId());
			cookie.setMaxAge(60 * 60 * 24);
			response.addCookie(cookie);
		}
		
		response.sendRedirect("ex02-main.jsp");		
	}


%>
 

 

</body>
</html>