<%@ page contentType="text/html; charset=utf-8" %>
<html>
	<head>
		<title>Implicit Object</title>
	</head>
	<body>
		<%
			request.setCharacterEncoding("utf-8");
			String userId = request.getParameter("id");
			String password = request.getParameter("password");
		%>
		<p> 아이디 : <%=userId %>
		<p> 비밀번호 : <%=password %>
	</body>
</html>