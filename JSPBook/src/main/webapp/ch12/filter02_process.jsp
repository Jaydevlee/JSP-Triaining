<%@page contentType="text/html; charset=UTF-8" %>
<html>
  <head>
    <title>Filter</title>
  </head>
  <body>
  	<%
  		String id = request.getParameter("id");
  		String pw = request.getParameter("pw");
  	%>
  	<p>입력된 id 값 : <%=id %></p>
  	<p>입력된 pw 값 : <%=pw %></p>
  </body>
</html>