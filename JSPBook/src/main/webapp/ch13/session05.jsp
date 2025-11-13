<%@page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.Enumeration" %>
<html>
  <head>
    <title>Session</title>
  </head>
  <body>
  	<h4>----- 세션을 삭제하기 전 -----</h4>
    <%
     String name;
     String value;

     Enumeration en=session.getAttributeNames();
     int i = 0;

     while(en.hasMoreElements()){
       name = en.nextElement().toString();
       value = session.getAttribute(name).toString();
       i++;
       out.println("설정된 세션의 이름 [" + i + "] :" +  name + "<br>");
       out.println("설정된 세션의 속성 값 [" + i + "] :" +  value + "<br>");
     }
     
     session.removeAttribute("user_id");
    %>
    <h4>----- 세션을 삭제한 후 -----</h4>
    <%
     en=session.getAttributeNames();
      i = 0;

     while(en.hasMoreElements()){
       name = en.nextElement().toString();
       value = session.getAttribute(name).toString();
       i++;
       out.println("설정된 세션의 이름 [" + i + "] :" +  name + "<br>");
       out.println("설정된 세션의 속성 값 [" + i + "] :" +  value + "<br>");
     }
     
    %>
  </body>
</html>