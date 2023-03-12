<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>action</title>
</head>
<body>

<%@ page import="upDown.UD" %>

<%
	UD ud = (UD)session.getAttribute("ud");

	if(ud == null) {
		ud = new UD();
		int cpu = ud.cpuValue();
		session.setAttribute("ud", ud);
		
	}

	int num = Integer.parseInt(request.getParameter("user"));
	
	String user = ud.checkInput(num);
	
	int cpu = ud.getAnswer();
	
	String result = ud.result(num, cpu);
	int cnt = ud.getCnt();
	
	
	request.setAttribute("cnt", cnt);

	request.setAttribute("result", result);
	

	if(result.equals("정답 !")) {
		session.removeAttribute("ud");
		request.getRequestDispatcher("result.jsp").forward(request, response);
		
	}
	
%>

	
	<form action="action.jsp" Method="POST">
		<h2>${result }</h2>
		<h2>0 ~ 100 까지의 정수 중 하나를 입력하세요</h2>
		
		<input type="number" min="0" max="100" name="user">
		<input type="submit" value="확인">
	</form>




</body>
</html>