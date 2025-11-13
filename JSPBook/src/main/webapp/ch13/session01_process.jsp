<%@ page contentType="text/html; charset=UTF-8" %>
<html>
  <head>
    <title>session</title>
  </head>
  <body>
  	<%
  		String user_id=request.getParameter("id");
  		String user_pw=request.getParameter("pw");
  	
  	if(user_id.equals("admin") && user_pw.equals("1234")){
  		session.setAttribute("user_id", user_id);
  		session.setAttribute("user_pw", user_pw);
  		out.println("세션 설정 성공 <br>");
  		out.println(user_id + "님 환형합니다.");
  	} else {
  		out.println("세션 설정 실패");
  	}
  	%>
  </body>
</html>