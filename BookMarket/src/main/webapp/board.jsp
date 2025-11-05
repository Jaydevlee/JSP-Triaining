<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
	<head>
		<title>Board</title>
	</head>
	<body>
	<div class="container py-4">
	<%@ include file = "menu.jsp" %>
	<h1>자유게시판</h1>
		<table class="table table-striped">
			<tr>
				<td>No.</td><td>제목</td><td>작성자</td>
			</tr>
			<c:forEach var="k" begin="1" end="10" step="1">
				<tr>
					<td><c:out value="${k}"/></td>
					<td>제목<c:out value="${k}"/></td>
					<td>홍길동</td>
				</tr>
			</c:forEach>
		</table>
		<%@ include file = "footer.jsp" %>
		</div>
	</body>
</html>