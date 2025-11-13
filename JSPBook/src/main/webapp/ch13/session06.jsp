<%@page contentType="text/html; charset=UTF-8" %>
<html>
  <head>
    <title>Session</title>
  </head>
  <body>
  	<h4>----- 세션을 삭제하기 전 -----</h4>
    <%
     String user_id=(String)session.getAttribute("user_id");
     String user_pw=(String)session.getAttribute("user_pw");;

     out.println("설정된 세션 이름 user_id : " + user_id +"<br>");
     out.println("설정된 세션 값 user_pw : " + user_pw +"<br>");
     
     if(request.isRequestedSessionIdValid()==true){
    	 out.println("세션이 유효합니다.");
     } else {
    	 out.println("세션이 유효하지 않습니다.");
     }
     
     session.invalidate();
    %>
    <h4>------- 세션을 삭제한 후 -------</h4>
    
    <%
	    if(request.isRequestedSessionIdValid()==true){
	   	 out.println("세션이 유효합니다.");
	    } else {
	   	 out.println("세션이 유효하지 않습니다.");
	    }
    %>
  </body>
</html>