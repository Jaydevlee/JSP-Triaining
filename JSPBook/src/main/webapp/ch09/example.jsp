<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import= "java.util.Locale,java.util.Date"%>
<%@ page import= "java.text.NumberFormat"%>

<html>
	<head>
		<title>Internationalization</title>	
	</head>
	<body>
		<%
			Locale locale = request.getLocale();
			NumberFormat curency = NumberFormat.getCurrencyInstance(locale);
			NumberFormat percentage = NumberFormat.getPercentInstance(locale);
			String fcurency = curency.format(1234567);
			String fpercentage = percentage.format(0.25);
		%>
		<p>로케일 통화 형식 : <%= fcurency %> </p>
		<p>로케일 비율 형식 :<%= fpercentage %></p>
	</body>
</html>