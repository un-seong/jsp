<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex02-action.jsp</title>
</head>
<body>
<%@ page import="day06.UpDownGame" %>
<%
	UpDownGame game = (UpDownGame) session.getAttribute("game");

	if(game == null) {
		game = new UpDownGame();
		session.setAttribute("game", game);
	}

	int num = Integer.parseInt(request.getParameter("num"));
	
	String check = game.checkInput(num);
	
	if(check.equals("correct")) {	// 만약 입력값이 정답이면
		String msg = game.getResult();		// 화면에 출력할 결과 문자열을 받아오고
		request.setAttribute("msg", msg);	// request에 저장한 후에
		session.removeAttribute("game"); 	// 다음 회차에 새로운 게임 객체를 생성하기 위해서 제거한다
		request.getRequestDispatcher("ex02-result.jsp").forward(request, response);
	}
	else {
		request.setAttribute("msg", String.format("%d : %s", num, check));
		request.getRequestDispatcher("ex02-form.jsp").forward(request, response);
	}
%>

</body>
</html>