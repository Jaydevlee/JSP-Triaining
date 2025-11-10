<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import = "dto.Book" %>
<%@ page import = "dao.BookRepository" %>
<%@ page import="com.oreilly.servlet.*" %>
<%@ page import="com.oreilly.servlet.multipart.*" %>
<%@ page import="java.util.*" %>

<% 
	request.setCharacterEncoding("UTF-8");
	
	//파일 업로드
	String filename="";
	String realFolder ="G:\\jsp_git\\JSP-Triaining\\BookMarket\\src\\main\\webapp\\resources\\images";
	int maxSize= 5 * 1024 * 1024; // 최대 업로드 파일 크기 지정
	String encType = "utf-8"; //인코딩 유형
	
	//이미지 업로드 위한 MutilpartRequest 객체 생성
	MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize, encType, new DefaultFileRenamePolicy());
	
	//도서 정보 자겨오기
	String bookId=multi.getParameter("bookId");
	String name=multi.getParameter("name");
	String unitPrice=multi.getParameter("unitPrice");
	//int price=Integer.paresInt(request.getParameter("unitPrice");
	String author=multi.getParameter("author");
	String publisher=multi.getParameter("publisher");
	String releaseDate=multi.getParameter("releaseDate");
	String description=multi.getParameter("description");
	String category=multi.getParameter("category");
	String unitInStock=multi.getParameter("unitInStock");
	//long stock=Integer.paresInt(request.getParameter("unitInStock");
	String condition=multi.getParameter("condition");
	
	//파일 이름 가져오기
	Enumeration files=multi.getFileNames();
	String fname = (String) files.nextElement();
	String fileName=multi.getFilesystemName(fname);
	
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
	newBook.setFileName(fileName);
	
	
	dao.addBook(newBook);
	
	//redirect방식으로 서버에서 클라이언트(books.jsp)로 이동
	response.sendRedirect("books.jsp");
%>