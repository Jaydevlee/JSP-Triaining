<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import = "dto.Book" %>
<%@ page import = "dao.BookRepository" %>

<% 
	request.setCharacterEncoding("UTF-8");
	
	String bookId=request.getParameter("bookId");
	String name=request.getParameter("name");
	String unitPrice=request.getParameter("unitPrice");
	//int price=Integer.paresInt(request.getParameter("unitPrice");
	String author=request.getParameter("author");
	String publisher=request.getParameter("publisher");
	String releaseDate=request.getParameter("releaseDate");
	String description=request.getParameter("description");
	String category=request.getParameter("category");
	String unitInStock=request.getParameter("unitInStock");
	//long stock=Integer.paresInt(request.getParameter("unitInStock");
	String condition=request.getParameter("condition");
	
	int price;
	
	if(unitPrice.isEmpty()) {
		price = 0;
	} else {
		price=Integer.valueOf(unitPrice);
	}
	
	long stock;
	
	if(unitInStock.isEmpty()) {
		stock=0;
	} else {
		stock=Long.valueOf(unitInStock);
	}
	
	// dao 역할 하는 클래스에 new를 남발하지 못하도록 싱글톤으로 처리
	BookRepository dao = BookRepository.getInstance(); //싱글톤
	
	Book newBook = new Book();
	newBook.setBookId(bookId);
	newBook.setName(name);
	newBook.setUnitPrice(price);
	newBook.setAuthor(author);
	newBook.setPublisher(publisher);
	newBook.setReleaseDate(releaseDate);
	newBook.setDescription(description);
	newBook.setCategory(category);
	newBook.setUnitsInStock(stock);
	newBook.setCondition(condition);
	
	dao.addBook(newBook);
	
	response.sendRedirect("books.jsp");
%>