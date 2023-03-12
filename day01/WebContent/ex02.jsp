<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex02.jsp</title>
</head>
<body>

<h1>메서드 작성해서 호출하고 계산하여 출력하기</h1>
<hr>

<%!
	// 선언부에서는 메서드를 정의할 수 있다
	public int factorial(int num) {
		int answer = 1;
		
		while(num!=0) {
			answer *= num;
			num = num-1;
		}
				
		return answer;
		
		
//		if(num ==1) {
//			return num;
//		}
//		else {
//			return num * factorial(num -1);
//		}
		
//		return num == 1 ? num : num * factorial(num - 1);

	}
%>


<%
	// 스크립틀릿에서 수행할 자바 코드를 작성한다.
	// 가장 많이 사용하는 기본 JSP 문법이다
	
	int n1 = 4;
	int answer = factorial(n1);


%>

<h3><%=n1 %>의 팩토리얼은 <%=answer %></h3>
<h3><%=5 %>의 팩토리얼은 <%=factorial(5) %></h3>

<%--
	<%= 5 %>		(O)
	out.print(5)
	
	<%= 5; %>		(X)
	out.print(5;)
 --%>


</body>
</html>