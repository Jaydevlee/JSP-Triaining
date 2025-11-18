<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*" %>
<%@ page errorPage="exceptionNoBookId.jsp" %>
<html>
	<head>
		<title>도서 정보</title>
		<link href="./resources/bootstrap.min.css" rel="stylesheet" />
		<script type="text/javascript">
		 function addToCart(){
			 if(confirm("도서를 장바구니에 추가하시겠습니까?")){
				 document.addForm.submit();
			 } else {
				 document.addForm.reset();
			 }
		 }
		</script>
	</head>
	<body>
		<div class="container py-4">
			<%@ include file="menu.jsp"%>
			<div class="p-5 mb-4 bg-body-tertiary rounded-3">
      <div class="container-fluid py-5">
        <h1 class="display-5 fw-bold">도서정보</h1>
        <p class="col-md-8 fs-4">BookInfo</p>      
      </div>
    </div>
    <%@ include file="dbconn.jsp" %>
    
    	<div class="row align-items-md-stretch   text-center">
    	<%
    		//books.jsp에서 id값을 가져와서 id변수에 저장
    		String bookId=request.getParameter("id");
				//Java에서 SQL문을 실행하기 위한 인터페이스
				PreparedStatement pstmt = null;
				//DB에서 SELECT된 결과를 저장하기 위한 Java 인터페이스
				ResultSet rs = null;
				
				String sql="SELECT * FROM book WHERE b_id=?";
				pstmt=conn.prepareStatement(sql); //sql문장과 DB(Oracle)과의 연결
				pstmt.setString(1, bookId);//첫번째 물음포에 id값 대입
				rs=pstmt.executeQuery(); //Oracle에서 SQL문장을 실행 및 실행결과를 저장
				
				if(rs.next()){
    	%>
    	<div class="col-md-5">
    		<img src="./resources/images/<%=rs.getString("b_filename") %>" style="width: 70%">
    	</div>
      	<div class="col-md-12">
      		<h3><b><%=rs.getString("b_name") %></b></h3>
      		<p> <%=rs.getString("b_description")%></p>
      		<p><b>도서코드: </b><span class="badge text-bg-danger"><%=rs.getString("b_id") %></span></p>
      		<p><b>저자</b> : <%=rs.getString("b_author") %></p>
      		<p><b>출판사</b> : <%=rs.getString("b_publisher") %></p>
      		<p><b>출판일</b> : <%=rs.getString("b_releaseDate") %></p>
      		<p><b>분류</b> : <%=rs.getString("b_category") %></p>
      		<p><b>재고수</b> : <%=rs.getString("b_unitinstock") %></p>
      		<h4><%=rs.getString("b_unitprice") %>원</h4>
      		<p>
      			<form name="addForm" action="./addCart.jsp?id=<%=rs.getString("b_id") %>" method="post">
      			<a href="#" class="btn btn-info" onclick="addToCart()">도서주문 &raquo;</a>
      			<a href="./cart.jsp" class="btn btn-warning">장바구니 &raquo;</a> 
      			<a href="./books.jsp" class="btn btn-secondary">도서목록 &raquo;</a>
      		</form>
      	</div>
      		<%
					}
					if(rs!=null)
						rs.close();
					if(pstmt!=null)
						pstmt.close();
					if(conn!=null)
						conn.close();
					%>
      </div>
			<jsp:include page="footer.jsp" />
		</div>
	</body>
</html>