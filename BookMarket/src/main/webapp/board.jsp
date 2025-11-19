<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
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
			
			<sql:setDataSource var="dataSource"
			url="jdbc:oracle:thin:@localhost:1521:xe"
			driver="oracle.jdbc.driver.OracleDriver" 
			user="bookmarket" password="bookmarket1234" />
			<sql:query var="resultSet" dataSource="${dataSource}">
			 SELECT board_no, board_title, board_writer, board_regdate FROM BOARD ORDER BY board_no DESC
			</sql:query>
			<!-- 자바 for문을 JSTL forEach 변경. -->
			<!-- var: 반복시 사용할 변수 이름 -->
			<!-- items: 반복할 대상 컬랙션 달러{}는 JSP에서 전달받은 리스트 객체 -->
			<!-- varStatus: 반복 상태를 담은 객체 -->
			<tbody>
			<!-- JSTL SQL 태그의 ResultSet 구조 -->
			<c:forEach var="board" items="${resultSet.rows}" varStatus="index">
				<tr>
					<td>${index.count}</td>
					<td><a href="./boardDetail.jsp?no=${board.board_no}">${board.board_title}</a></td>
					<td>${board.board_writer}</td>
					<td>${board.board_regdate}</td>
				</tr>
			</c:forEach>
			</tbody>
		</table>
		<%@ include file = "footer.jsp" %>
		</div>
	</body>
</html>