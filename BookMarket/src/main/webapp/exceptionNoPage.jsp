<%@ page contentType="text/html; charset=utf-8"%>
<html>
	<head>
		<title>페이지 오류</title>
		<link href="./resources/bootstrap.min.css" rel="stylesheet" />
	</head>
	<body>
   <%@ include file="menu.jsp"%>	
    <div class="jumbotron">
      <div class="container">
        <h2 class="alert alert-danger">요청하신 페이지를 찾을 수 없습니다.</h2>
      </div>
    </div>
    <div class="container">
     	<p><%=request.getRequestURI() %></p>
     	<p><a href="book.jsp" class="btn btn-secondary"> 도서 목록 &raquo;</a></p>
    </div>
	</body>
</html>