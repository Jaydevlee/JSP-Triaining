<%@ page contentType="text/html; charset=utf-8" %>
<html>
	<head>
		<title>implicit Objects</title>
	</head>
	<body>
		<%
			out.println("오늘 날짜 및 시각" + "<br>");
			out.println(java.util.Calendar.getInstance().getTime());
		%>
	</body>
</html>