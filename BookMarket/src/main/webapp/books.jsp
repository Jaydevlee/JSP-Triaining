<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Book"%>
<%@ page import="dao.BookRepository"%>
<html>
<head>
 <link href="./resources/bootstrap.min.css" rel="stylesheet" />
<title>도서 목록</title>
</head>
<body>
<div class="container py-4">
   <%@ include file="menu.jsp"%>	

   <div class="p-5 mb-4 bg-body-tertiary rounded-3">
      <div class="container-fluid py-5">
        <h1 class="display-5 fw-bold">도서목록</h1>
        <p class="col-md-8 fs-4">BookList</p> 
        <div class="mb-3 row">
					<div class="col-sm-offset-2 col-sm-10"> 
						<a href="./addBook.jsp" class="btn btn-secondary">도서 등록 &raquo;</a> 
					</div>
				</div>     
      </div>
    </div>
	<%
		BookRepository dao = BookRepository.getInstance();
		// ArrayList에 있는 listOfBooks 변수를 forEach에 사용 못하는 이유는
		// listOfBooks 변수가 지역변수이기 대문에, ${listOfBooks}에 인식하지 못함.
		ArrayList<Book> listOfBooks = dao.getAllBooks();
		// 따라서 아래와 같이 request로 저장하여 ${listOfBooks}에서도 사용할 수 있게 해야함.
	  	// JSTL forEach으로 변경하기 위해서 아래와 같이 setAttribute로 배열에 있는 데이터를 
	  	// 안전하게 book.jsp로 가져와야 한다.
		request.setAttribute("listOfBooks", listOfBooks);
	%>
      
	 <div class="row align-items-md-stretch   text-center">
	<c:forEach var="book" items="${listOfBooks}">
     	<div class="col-md-4">
       		<div class="h-100 p-2">	
       		<img src="resources/images/${book.fileName}" style="width : 250; height : 350" />
				<h5><b>${book.name}</b></h5>
				<p>${book.author}</p>
				<br> ${book.publisher} | ${book.releaseDate}
				<p> ${book.description}... </p>
				<p>${book.unitPrice}원</p>
				<p><a href="./book.jsp?id=${book.getBookId()}" class="btn btn-secondary" role="button"> 상세 정보 &raquo;></a></p>
			</div>	
		</div>			
	</c:forEach>
	
		</div>	
		<%@ include file="footer.jsp"%>   
  </div>
</body>
</html>
