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
			String[] hobby = request.getParameterValues("hobby");
		%>
		<p> 아이디 : <%=userId %>
		<p> 비밀번호 : <%=password %>
		<p> 취미: <%=hobby[0]%> <%=hobby[1]%>
	</body>
</html>