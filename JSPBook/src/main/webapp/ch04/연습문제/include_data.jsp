<%@ page contentType="text/html; charset=utf-8" %>
<% 
	int num = Integer.parseInt(request.getParameter("num"));
	for(int i = 1; i < 10; i++) {
		out.println(num + "x" + i + "=" + (num*i) + "<br>");
	}
%>