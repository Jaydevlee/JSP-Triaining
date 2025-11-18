<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="com.oreilly.servlet.*" %>
<%@ page import="com.oreilly.servlet.multipart.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<%@ include file="dbconn.jsp" %>

<% 
	request.setCharacterEncoding("UTF-8");
	
	//파일 업로드
	String filename="";
	String realFolder ="G:\\jsp_git\\JSP-Triaining\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\BookMarket\\resources\\images";
	//String realFolder ="C:\\Users\\tyu20\\JSP\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\BookMarket\\resources\\images";
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
	
	if(unitPrice != null && unitPrice.isEmpty()) {
		price = 0;
	} else {
		price=Integer.valueOf(unitPrice);
	}
	
	long stock;
	
	if(unitInStock != null && unitInStock.isEmpty()) {
		stock=0;
	} else {
		stock=Long.valueOf(unitInStock);
	}
	
	//db에 저장
	PreparedStatement pstmt=null;
	String sql="INSERT INTO book VALUES(?,?,?,?,?,?,?,?,?,?,?)";
	pstmt=conn.prepareStatement(sql);
	pstmt.setString(1, bookId);
	pstmt.setInt(2, price);
	pstmt.setString(3, unitPrice);
	pstmt.setString(4, author);
	pstmt.setString(5, description);
	pstmt.setString(6, publisher);
	pstmt.setString(7, category);
	pstmt.setLong(8, stock);
	pstmt.setString(9, releaseDate);
	pstmt.setString(10, condition);
	pstmt.setString(11, fileName);
	/*executeUpdate()메소드는 몇 건을 처리했는지에 대한 값을 저장하므로
	  INSERT, UPDATE, DELETE 작업시 사용 */
	pstmt.executeUpdate();
	
	if(pstmt!=null)
		 pstmt.close();
	if(conn!=null)
		conn.close();
	//INSERT가 끝난 redirect방식으로 서버에서 클라이언트(books.jsp)로 이동
	response.sendRedirect("books.jsp");
%>