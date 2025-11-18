<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%
	request.setCharacterEncoding("UTF-8");
	String id=request.getParameter("user_id");
	String pw=request.getParameter("user_pw");
	%>
	
	<sql:setDataSource var="dataSource" 
		url="jdbc:oracle:thin:@localhost:1521:xe"
		driver="oracle.jdbc.driver.OracleDriver" 
		user="bookmarket" password="bookmarket1234" />
	<sql:query var="resultSet" dataSource="${dataSource}">
		SELECT * FROM MEMBER WHERE ID=? AND PASSWORD=?
		<sql:param value="<%=id %>"/>
		<sql:param value="<%=pw %>"/>
	</sql:query>
	<c:forEach var="row" items="${resultSet.rows}">
	<%
		session.setAttribute("sessionId", id);
	%>
	<c:redirect url="resultMember.jsp?msg=2" />
	</c:forEach>
	<c:redirect url="loginMember.jsp?error=1"/>