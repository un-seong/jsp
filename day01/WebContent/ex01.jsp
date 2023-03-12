<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex01.jsp</title>
</head>
<body>
<%@ page import="java.util.ArrayList" %>
<%-- 지시자, directive : JSP가 서블릿 클래스로 변환될 때 import 및 언어 인코딩등을 설정한다  --%>

<%!
	// 선언부, declaration : JSP가 서블릿 클래스로 변환될 때의 멤버 필드와 멤버 메서드를 작성하는 공간
	// 필드와 메서드를 정의한다
	private String title = "JSP 기초 문법";

	public int add(int n1, int n2) {
		return n1 + n2;
	}
%>

<%
	// 스크립틀릿, JSP 내부에서 service() 메서드에 작성할 자바 코드를 작성한다
	// 일반 자바 코드에서 메인함수의 역할로 생각할 수 있다
	int n1 = 10;
	int n2 = 20;
	int answer = add(n1, n2);
	
	out.print(answer);
%>

<h2>표현식 : <%=answer %></h2>
<%-- 표현식은 자바코드의 값을 HTML에 바로 출력하며, out.print() 와 역할이 동일하다 --%>

<table border="1" cellpadding="10" cellspacing="0">
	<tr>
		<th>종류</th>
		<th>예시</th>
		<th>설명</th>
	</tr>
	
	<tr>
		<th>directive, 지시자</th>
		<th>&lt;%@ page import="java.util.ArrayList" %></th>
		<th>import, 인코딩, session 설정 등을 처리한다. 클래스 전체에 적용되는 설정</th>
	</tr>
	
	<tr>
		<th>declaration, 선언부</th>
		<th>&lt;%! int n1 = 10; %></th>
		<th>클래스의 멤버 필드 및 멤버 메서드를 선언하는 공간이다. 함수를 정의할 수 있으나 호출할 수 없다</th>
	</tr>
	
	<tr>
		<th>scriptlet, 스크립틀릿</th>
		<th>&lt;% %></th>
		<th>자바 코드를 작성하는 공간. 실제로는 service() 함수에 내용을 작성하는 것이다</th>
	</tr>
	
	<tr>
		<th>expression, 표현식</th>
		<th>&lt;%= n1%>, &lt;%= add(10, 20) %></th>
		<th>변수 혹은 함수의 값을 HTML에 출력한다. out.print()와 동일하다</th>
	</tr>
	
	<tr>
		<th>comment, 주석</th>
		<th>&lt;%-- JSP주석~~~ --%></th>
		<th>JSP주석은 HTML주석과 달리, 웹 브라우저에서 확인할 수 없다</th>
	</tr>
	
	
</table>

</body>
</html>