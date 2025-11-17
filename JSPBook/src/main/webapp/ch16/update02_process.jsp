<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.sql.*" %>
<html>
	<head>
		<title>DataBase SQL</title>
	</head>
	<body>
		<%@ include file="dbconn.jsp"%>
		<%
			request.setCharacterEncoding("UTF-8");
		
			String id=request.getParameter("id");
			String passwd=request.getParameter("pw");
			String name=request.getParameter("name");
		try{	
			PreparedStatement pstmt = null;
			ResultSet rs=null;
			String sql="SELECT * FROM Member WHERE id=?";
			
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs=pstmt.executeQuery();
			
			if(rs.next()){
				String rId=rs.getString("id");
				String rPw=rs.getString("passwd");
				
				if(id.equals(rId) && passwd.equals(rPasswd)){
					sql="UPDATE Member SET nmae=? WHERE id=?";
					pstmt=conn.prepareStatement(sql);
					pstmt.setString(1, name);
					pstmt.setString(2, id);
					pstmt.executeUpdate();
					out.println("Meber 테이블을 수정했습니다.");
				} else
					out.println("일치하는 비밀번호가 아닙니다.");
			} else
				out.println("Member에 일치하는 아이디가 없습니다.");
		} catch (SQLException ex){
				out.println("SQLException : " + ex.getMessage);
		} finally {
			if(rs!=null)
				rs.close();
			if(pstmt!=null)
				pstmt.close();
			if(conn!=null)
				conn.close();
		}
		}
		%>
	</body>
</html>