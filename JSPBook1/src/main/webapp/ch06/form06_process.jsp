<%@ page contentType="text/html charset=utf-8" %>
<%@ page import="java.io.*, java.util.*"%>
<html>
	<head>
		<title>From Processing</title>
	</head>
	<body>
		<table border="1">
		<tr>
			<th>요청 파라미터 이름</th>
			<th>요청 파라미터 값</th>
		</tr>
		<%
			request.setCharacterEncoding("UTF-8");
			
		//열거타입, 모든 입력양식의 요청 파라미터 이름을 순서에 상관없이 열거형을 전달 받음
			Enumeration paramNames = request.getParameterNames();
		               //열거형 요소가 있으면 true를 반환, 없으면 false를 반환
			while(paramNames.hasMoreElements()) {
					//열거형 요소를 반환한다.
					String name = (String) paramNames.nextElement();
					out.println("<tr><td>" + name + "</td> \n");
					String paramvalue = request.getParameter(name);
					out.println("<td>" + paramvalue + "</td></tr> \n");
			}
		%>
		</table>
	</body>
</html>