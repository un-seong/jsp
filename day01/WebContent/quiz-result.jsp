<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원 결과표!</title>
</head>
<body>

<%

	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String repw = request.getParameter("repw");
	String name = request.getParameter("name");
	
	String year = request.getParameter("year");
	String month = request.getParameter("month");
	String day = request.getParameter("day");
	
	String gender = request.getParameter("gender");
	String phone = request.getParameter("phone");
%>

<h2>네이버 ID, PW !!</h2>
<hr>
        
    <table border="1">
        <tr>
            <td>아이디</td>
            <td><%=id %></td>
        </tr>

        <tr>
            <td>비밀번호</td>
            <td><%=pw %></td>
        </tr>
        
        <tr>
            <td>비밀번호 재확인</td>
            <td><%=repw %></td>
        </tr>

        <tr>
            <td>이름</td>
            <td><%=name %></td>
        </tr>
        
        <tr>
            <td>생년월일</td>
            <td><%=year %>.<%=month %>.<%=day %></td>
        </tr>

        <tr>
            <td>성별</td>
            <td><%=gender %></td>
        </tr>

        <tr>
            <td>휴대전화</td>
            <td><%=phone %></td>
        </tr>
        
    </table>
</body>
</html>