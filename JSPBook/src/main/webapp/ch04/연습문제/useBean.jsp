<%@ page contentType="text/html; charset=utf-8" %>

<html>
<head>
	<title>Action Tag</title>
</head>
<body>
	<h4>구구단 출력하기</h4>
	<jsp:useBean id="mult" class="ch04.com.dao.GuGuDan" />
	<%
		int result[] = mult.process(5);
		for(int i = 0; i < 9; i++){
			out.println(5 + "x" + (i+1) + "=" + result[i] + "<br>");
		}
	%>
</body>
</html>