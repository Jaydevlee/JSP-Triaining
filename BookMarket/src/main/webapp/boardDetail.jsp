<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="dto.Board"%>
<%@ page import="dao.BoardRepository"%>
<%@ page import="java.util.ArrayList"%>
<jsp:useBean id="boardDAO" class="dao.BoardRepository" scope="session" />

<html>
	<head>
		<title>게시판</title>
		<link href="./resources/bootstrap.min.css" rel="stylesheet" />
	</head>
	<body>
		<div class="container py-4">
			<%@ include file="menu.jsp"%>
			<div class="p-5 mb-4 bg-body-tertiary rounded-3">
      	<div class="container-fluid py-5">
        	<h1 class="display-5 fw-bold">게시판 상세페이지</h1>
        	<p class="col-md-8 fs-4">Board Detail</p>
        </div>
      </div>
      
      <%
      	String no = request.getParameter("no");
      BoardRepository dao = BoardRepository.getInstance();
      	Board board = dao.getBoardByNo(Integer.parseInt(no));
      %>
      <table class="table table-hover">
      	<tr>
      		<td><%=board.getNo()%></td>
      	</tr>
      	<tr>
      		<td>제목</td>
      		<td><%= board.getTitle()%></td>
      	</tr>
      	<tr>
      		<td>내용</td>
      		<td><%= board.getContent()%>
      				<%String fileName=board.getFileName();
      					if(fileName != null && !fileName.trim().isEmpty()){%>
      					<br><img src="./resources/images/<%=board.getFileName() %>" style="width: 70%">
      				<%
      					}
      				%>
      		</td>
      	</tr>
      	<tr>
      	<td colspan="2">
      		<a href="./board.jsp" class="btn btn-secondary">게시판목록 &raquo;</a>
      	</tr>
      </table>
      <jsp:include page="footer.jsp" />
    </div>
	</body>
</html>