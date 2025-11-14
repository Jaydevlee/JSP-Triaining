<%@ page contentType="text/html; charset=utf-8" %>
<html>
	<head>
		<title>Implicit Objects</title>
	</head>
	<body>
		<%
			request.setCharacterEncoding("UTF-8");
			String userID = request.getParameter("id");
			String userPW = request.getParameter("pw");
		%>
		<p> 아이디 : <% out.println(userID); %></p>
		<p> 비밀번호 : <% out.println(userPW); %></p>
	</body>
</html>