<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.sql.*" %>
<html>
	<head>
		<title>DataBase SQL</title>
	</head>
	<body>
	<%@ include file="dbconn.jsp" %>
	<%
		request.setCharacterEncoding("UTF-8");
		
		String id=request.getParameter("id");
		String passwd=request.getParameter("pw");
		String name=request.getParameter("name");
		
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		try{
			String sql="SELECT id, passwd FROM Member WHERE id=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, "id");
			rs=pstmt.executeQuery();
			
			if(rs.next()){
				String rId=rs.getString("id");
				String rPw=rs.getString("passwd");
				if(id.equals(rId) && passwd.equals(rPw)){
					sql="DELECT FRPM Member WHERE id=? AND passwd=?";
					pstmt=conn.prepareStatement(sql);
					pstmt.setString(1, "id");
					pstmt.setString(2, "passwd");
					rs=pstmt.executeQuery();
					out.println("Member 테이블에서 데이터를 삭제 했습니다.");
				} else 
					out.println("일치하는 비밀번호가 아닙니다.");
			} else 
				out.println("Member 테이블에 일치하는 아이디가 없습니다.");
		} catch (SQLException e){
			out.println("SQLExcepiton : " + e.getMessage());
		} finally {
			if(rs!=null)
				rs.close();
			if(stmt!=null)
				stmt.close();
			if(conn!=null)
				conn.close();
		}
	%>
	</body>
</html>