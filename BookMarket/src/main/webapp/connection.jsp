<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.sql.*" %>
<html>
	<head>
		<title>Database SQL</title>
	</head>
	<body>
		<%
			Connection conn=null; //Connection 객체 생성
		try{
			String url="jdbc:oracle:thin:@localhost:1521:xe";
			String user="bookmarket";
			String password="bookmarket1234";
			
			Class.forName("oracle.jdbc.driver.OracleDriver"); //jdbc 드라이버 로딩
			conn = DriverManager.getConnection(url, user, password);
			out.println("DB 연결에 성공했습니다.");
		} catch (SQLException e) {
			out.println("DB연결에 실패했습니다<br>");
			out.println("SQLException: " + e.getMessage());
		} finally {
			if(conn!=null)
				conn.close();
		}
		%>
	</body>
</html>