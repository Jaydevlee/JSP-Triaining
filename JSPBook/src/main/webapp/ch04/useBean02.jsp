<%@ page contentType="text/html; charset=UTF-8"%>
<html>
<head>
  <title>Action Tag</title>
</head>
<body>
  <jsp:useBean id="bean" class="chap04.com.dao.Calculator" />
  <%
  	int m = bean.process(5);
  	out.println("5의 3제곱: " + m);
  %>
</body>
</html>