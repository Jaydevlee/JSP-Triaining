<%@page contentType="text/html; chareset = uft-8" %>
<html>
	<head>
		<title>Directives Tag</title>
	</head>
	<body>
		<%@ page info="Date 클래스를 이용한 날짜 출력하기" %>
		<p>Today is <%= new java.util.Date() %></p>
	</body>
</html>