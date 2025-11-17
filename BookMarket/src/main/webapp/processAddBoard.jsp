
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import = "dto.Book" %>
<%@ page import = "dao.BoardRepository" %>
<%@ page import="dto.Board"%>
<%@ page import="com.oreilly.servlet.*" %>
<%@ page import="com.oreilly.servlet.multipart.*" %>
<%@ page import="java.util.*" %>
<% 
request.setCharacterEncoding("UTF-8");

//파일 업로드
String filename="";
String realFolder ="G:\\jsp_git\\JSP-Triaining\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\BookMarket\\resources\\images";
//String realFolder ="C:\\Users\\tyu20\\JSP\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\BookMarket\\resources\\images";
// 경로를 잘 확인하고 입력하자 임마
int maxSize= 5 * 1024 * 1024; // 최대 업로드 파일 크기 지정
String encType = "utf-8"; //인코딩 유형


//이미지 업로드 위한 MutilpartRequest 객체 생성
MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize, encType, new DefaultFileRenamePolicy());

System.out.println("boardNo = " + multi.getParameter("boardNo"));

int no = Integer.parseInt(multi.getParameter("boardNo"));
String title = multi.getParameter("boardTitle");
String content = multi.getParameter("boardContent");
String writer = multi.getParameter("writer");

//파일 이름 가져오기
	Enumeration files=multi.getFileNames();
	String fname = (String) files.nextElement();
	String fileName=multi.getFilesystemName(fname);
	
	BoardRepository dao = BoardRepository.getInstance();
	
	Board newBoard = new Board();
	newBoard.setNo(no);
	newBoard.setTitle(title);
	newBoard.setContent(content);
	newBoard.setWriter(writer);
	newBoard.setFileName(fileName);
	
	dao.addBoard(newBoard);
	
	response.sendRedirect("board.jsp");
	%>