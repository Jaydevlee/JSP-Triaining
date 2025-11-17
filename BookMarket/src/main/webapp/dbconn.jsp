<%@ page import="java.sql.*" %>
<html>
	<head>
		<title>Database SQL</title>
	</head>
	<body>
		<%
			Connection conn=null; //Connection 객체 생성
			String url="jdbc:oracle:thin:@localhost:1521:xe";
			String user="bookmarket";
			String password="bookmarket1234";
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(url, user, password);
		%>
	</body>
</html>