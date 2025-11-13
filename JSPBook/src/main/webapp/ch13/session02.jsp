<%@ page contentType="text/html; charset=UTF-8" %>
<html>
  <head>
    <title>session</title>
  </head>
  <body>
  	<%
  		String user_id=(String)session.getAttribute("user_id");
  		String user_pw=(String)session.getAttribute("user_pw");
  	
  		out.println("설정된 세션의 속성 값[1]" + user_id + "<br>");
  		out.println("설정된 세션의 속성 값[2]" + user_pw);
  	%>
  </body>
</html>