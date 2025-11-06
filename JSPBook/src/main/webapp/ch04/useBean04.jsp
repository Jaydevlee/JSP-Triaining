<%@ page contentType="text/html; charset=UTF-8"%>
<html>
<head>
  <title>Action Tag</title>
</head>
<body>
  <jsp:useBean id="person" class="chap04.com.dao.Person" scope="request" />
  <p> 아이디 : <%=person.getId() %>
  <p> 아이디 : <%=person.getName() %>
  <%
  	person.setId(20230824);
  	person.setName("홍길동");
  %>
  <jsp:include page="useBean03.jsp" />
</body>
</html>