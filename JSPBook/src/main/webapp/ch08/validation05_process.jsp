<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head>
	<title>Validation</title>
</head>
<body>
	<h3>입력에 성공했습니다.</h3>
	<%
		request.setCharacterEncoding("utf-8");

	%>
	<p> 아이디 : <%=request.getParameter("id") %></p>
	<p> 비밀번호 : <%=request.getParameter("pw") %></p>
	<p> 이름 : <%=request.getParameter("name") %></p>
	<p> 연락처 : <%=request.getParameter("phone1")%>-
						<%=request.getParameter("phone2")%>-
						<%=request.getParameter("phone3")%></p>
	<p> 이메일 : <%=request.getParameter("email") %></p>						
</body>
</html>