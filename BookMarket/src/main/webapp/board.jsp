<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>

<html>
	<head>
		<link href="./resources/bootstrap.min.css" rel="stylesheet" />
		<title>Board</title>
	</head>
	<body>
		<div class="container py-4">
		<%@ include file = "menu.jsp" %>
		<div class="p-5 mb-4 bg-body-tertiary rounded-3">
		 <div class="container-fluid py-5">
			<h1 class="display-5 fw-bold">도서 자유게시판</h1>
			<p class="col-md-8 fs-4">Board</p>
			</div>
		</div>
	
		<p><a href="./addBoard.jsp" class="btn btn-secondary" role="button"> 글쓰기 &raquo;</a></p>
		<table class="table table-hover">
			<thead>
			<tr>
				<th>No.</th><th>제목</th><th>작성자</th><th>작성일자</th>
			</tr>
			</thead>
			<%@ include file="dbconn.jsp" %>
			<%
					//Java에서 SQL문을 실행하기 위한 인터페이스
					PreparedStatement pstmt = null;
					//DB에서 SELECT된 결과를 저장하기 위한 Java 인터페이스
					ResultSet rs = null;
					
					String sql = "SELECT BOARD_NO, BOARD_TITLE, BOARD_WRITER , BOARD_REGDATE FROM board ORDER BY BOARD_NO DESC";
					pstmt=conn.prepareStatement(sql); //sql문장과 DB(Oracle)과의 연결
					rs=pstmt.executeQuery(); //Oracle에서 SQL문장을 실행 및 실행결과를 저장
					
					//Map으로 배열 처리
					List<Map<String, Object>> boardList = new ArrayList<>();
					 while(rs.next()) {
					        Map<String, Object> row = new HashMap<>();
					        row.put("no", rs.getInt("BOARD_NO"));
					        row.put("title", rs.getString("BOARD_TITLE"));
					        row.put("writer", rs.getString("BOARD_WRITER"));
					        row.put("regdate", rs.getString("BOARD_REGDATE"));
					        boardList.add(row);
					    }
					 request.setAttribute("boardList", boardList);

			    if(rs != null) rs.close();
			    if(pstmt != null) pstmt.close();
			    if(conn != null) conn.close();
				%>
			<!-- 자바 for문을 JSTL forEach 변경. -->
			<!-- var: 반복시 사용할 변수 이름 -->
			<!-- items: 반복할 대상 컬랙션 달러{}는 JSP에서 전달받은 리스트 객체 -->
			<!-- varStatus: 반복 상태를 담은 객체 -->
			<c:forEach var="board" items="${boardList}" varStatus="index">
			<tbody>
				<tr>
					<td>${index.count}</td>
					<td><a href="./boardDetail.jsp?no=${board.no}">${board.title}</a></td>
					<td>${board.writer}</td>
					<td>${board.regdate}</td>
				</tr>
				</tbody>
			</c:forEach>
		</table>
		<%@ include file = "footer.jsp" %>
		</div>
	</body>
</html>