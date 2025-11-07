<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Board"%>
<jsp:useBean id="boardDAO" class="dao.BoardRepository" scope="session" />
<html>
	<head>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
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
		
		<!-- DAO에서 목록 불러오기 -->
		<%
    ArrayList<Board> listOfBoard = boardDAO.getAllBoards();
  	// JSTL forEach으로 변경하기 위해서 아래와 같이 setAttribute로 배열에 있는 데이터를 
  	// 안전하게 board.jsp로 가져와야 한다.
    request.setAttribute("listOfBoard", listOfBoard);
  %>
		
		<table class="table table-hover">
			<thead>
			<tr>
				<th>No.</th><th>제목</th><th>작성자</th><th>작성일자</th>
			</tr>
			</thead>
			<!-- 자바 for문을 JSTL forEach 변경. -->
			<c:forEach var="board" items="${listOfBoard}" varStatus="index">
			<tbody>
				<tr>
					<td>${index.count}</td>
					<td><a href="./boardDetail.jsp?no=${board.getNo()}">${board.title}</a></td>
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