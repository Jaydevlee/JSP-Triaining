<%@ page contentType="text/html; charset=utf-8" %>
<html>
	<head>
		<title>Implicit Object</title>
	</head>
	<body>
		<%
			request.setCharacterEncoding("utf-8");
			String userId = request.getParameter("id");
			String pw = request.getParameter("password");
		if(userId.equals("관리자") && pw.equals("1234")) {
			response.sendRedirect("response01_success.jsp");
		} else {
			response.sendRedirect("response01_failed.jsp");
		}
		%>
		
	</body>
</html>