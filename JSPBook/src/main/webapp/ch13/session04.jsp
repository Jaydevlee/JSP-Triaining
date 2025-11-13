<%@ page contentType="text/html; charset=UTF-8" %>
<html>
  <head>
    <title>session</title>
  </head>
  <body>
  	<h4>----- 세션을 삭제하기 전 -----</h4>
  	<%
  		String user_id=(String)session.getAttribute("user_id");
  		String user_pw=(String)session.getAttribute("user_pw");
  	
  		out.println("설정된 세션의 속성 이름" + user_id + "<br>");
  		out.println("설정된 세션의 속성 값" + user_pw + "<br>");
  		
  		session.removeAttribute("user_id");
  	%>
  	
  	<h4>----- 세션을 삭제한 후 -----</h4>
  	<%
  		 user_id=(String)session.getAttribute("user_id");
  		 user_pw=(String)session.getAttribute("user_pw");
  	
  		out.println("설정된 세션의 속성 이름" + user_id + "<br>");
  		out.println("설정된 세션의 속성 값" + user_pw + "<br>");
  	%>
  </body>
</html>