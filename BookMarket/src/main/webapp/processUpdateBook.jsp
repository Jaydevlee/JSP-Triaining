<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="com.oreilly.servlet.*" %>
<%@ page import="com.oreilly.servlet.multipart.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<%@ include file="dbconn.jsp" %>
<%

	request.setCharacterEncoding("UTF-8");
	
	//파일 업로드하기 위한 설정
	String filename="";
	//이미지를 서버에 어떤 위치에 저장할 것인가
	String realFolder ="G:\\jsp_git\\JSP-Triaining\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\BookMarket\\resources\\images";
	int maxSize= 5 * 1024 * 1024; // 최대 업로드 파일 크기 지정(5mb)
	String encType = "utf-8"; //인코딩 유형, 이미지파일 이름이 한글일때 깨짐 방지
	
	//이미지 업로드 위한 MutilpartRequest 객체 생성
	MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize, encType, new DefaultFileRenamePolicy());
	
	//도서 정보 자겨오기(updateBook.jsp 폼 영역에서 입력한 정보 가져오기)
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
	
	// 이미지 첨부를 위한 MultiparetRequeset 객체를 사용했기 때문에 request가 아닌 multi를 사용

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
	
	PreparedStatement pstmt=null;
	ResultSet rs=null;
	
	String sql="SELECT * FROM book WHERE b_id=?";
	pstmt=conn.prepareStatement(sql);
	pstmt.setString(1, bookId);
	rs=pstmt.executeQuery();
	
	if(rs.next()){
		if(fileName!=null) {
			sql="UPDATE book SET b_name=?, b_unitPrice=?, b_author=?, b_description=?, b_publisher=?, b_category=?, b_unitInStock=?, b_releaseDate=?, b_condition=?, b_fileName=? WHERE b_id=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, name);
			pstmt.setInt(2, price);
			pstmt.setString(3, author);
			pstmt.setString(4, description);
			pstmt.setString(5, publisher);
			pstmt.setString(6, category);
			pstmt.setLong(7, stock);
			pstmt.setString(8, releaseDate);
			pstmt.setString(9, condition);
			pstmt.setString(10, fileName);
			pstmt.setString(11, bookId);
			/*executeUpdate()메소드는 몇 건을 처리했는지에 대한 값을 저장하므로
			  INSERT, UPDATE, DELETE 작업시 사용 */
			pstmt.executeUpdate();
		} else {
			sql="UPDATE book SET b_name=?, b_unitPrice=?, b_author=?, b_description=?, b_publisher=?, b_category=?, b_unitInStock=?, b_releaseDate=?, b_condition=?  WHERE b_id=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, name);
			pstmt.setInt(2, price);
			pstmt.setString(3, author);
			pstmt.setString(4, description);
			pstmt.setString(5, publisher);
			pstmt.setString(6, category);
			pstmt.setLong(7, stock);
			pstmt.setString(8, releaseDate);
			pstmt.setString(9, condition);
			pstmt.setString(10, bookId);
			pstmt.executeUpdate();
		}
	}
	if(pstmt!=null)
		pstmt.close();
	if(conn!=null)
		conn.close();
	
	response.sendRedirect("editBook.jsp?edit=update");
%>
