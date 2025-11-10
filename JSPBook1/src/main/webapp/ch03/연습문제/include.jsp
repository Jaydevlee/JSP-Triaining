<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.util.Calendar" %>
<html>
	<head>
		<title>include</title>
	</head>
	<body>
		<%@ include file="header.jsp" %>
		<p>현재 시각 : <%= Calendar.getInstance().getTime() %>
	</body>
</html>