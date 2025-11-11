<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
	<title>Internationalization</title>
</head>
<body>
	<p>------기본 로케일---------</p>
	<fmt:setLocale value="ko"/>
		<fmt:setBundle basename="ch09.com.bundle.myBundle" var="resourceBundle" />
		<p> 제목 : <fmt:message key="title" bundle="${resourceBundle}" /></p>
		<p> <fmt:message key="username" bundle="${resourceBundle}" var="userMsg" />
				이름 : ${userMsg} 
		</p>
		<p>------영문 로케일---------</p>
		<fmt:setLocale value="en"/>
		<fmt:setBundle basename="ch09.com.bundle.myBundle" var="resourceBundle" />
		<p> 제목 : <fmt:message key="title" bundle="${resourceBundle}" /></p>
		<p> 이름 : <fmt:message key="username" bundle="${resourceBundle}" /></p>
</body>
</html>