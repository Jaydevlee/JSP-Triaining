<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="com.oreilly.servlet.*" %>
<%@ page import="com.oreilly.servlet.multipart.*" %>

<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>
<% 
	MultipartRequest multi = new MultipartRequest(request,"G:\\upload",5*1024*1024,"utf-8", new DefaultFileRenamePolicy());
%>	