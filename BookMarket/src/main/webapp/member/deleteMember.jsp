<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%
	String sessionId=(String)session.getAttribute("sessionId");
%>
<sql:setDataSource var="dataSource"
			url="jdbc:oracle:thin:@localhost:1521:xe"
			driver="oracle.jdbc.driver.OracleDriver" 
			user="bookmarket" password="bookmarket1234" />
<sql:update var="resultSet" dataSource="${dataSource}">
	DELETE FROM member WHERE id=?
	<sql:param value="<%=sessionId %>" />
</sql:update>
<c:if test="${resultSet>=1}">
	<%
		session.invalidate();
	%>
	<c:redirect url="resultMember.jsp?msg=3" />
</c:if>