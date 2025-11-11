<%@ page contentType="text/html; charset=utf-8"%>
<html>
	<head>    
    <link href="./resources/bootstrap.min.css" rel="stylesheet" />
    <script type="text/javascript" src="./resources/js/validation.js"></script>
		<title>글 쓰기</title>
	</head>
	<body>
	<div class="container py-4">
	<%@ include file="menu.jsp" %>
	
		<div class="p-5 mb-4 bg-body-tertiary rounded-3">
		<div class="container-fluid py-5">
			<h1 class="display-5 fw-bold">도서 등록</h1>
			<p class="col-md-8 fs-4">Book Addition</p>
		</div>
	</div>
	<div class="row align-items-md-stretch">
		<form name="newBook" action="./processAddBoard.jsp" class="form-horizontal" method="post" enctype="multipart/form-data">
			<div class="mb-3 row">
				<label class="col-sm-2">No</label>
				<div class="col-sm-3">
					<input type="text" id="boardNo" name="boardNo" class="form-control">
				</div>
			</div>
		<div class="mb-3 row">
			<label class="col-sm-2">제목</label>
			<div class="col-sm-3">
				<input type="text" id="boardTitle" name="boardTitle" class="form-control">
			</div>
		</div>
		<div class="mb-3 row">
			<label class="col-sm-2">내용</label>
			<div class="col-sm-3">
				<textarea id="boardContent" name="boardContent" cols="50" rows="2" class="form-control" placeholder="100자 이상 적어주세요"></textarea>
			</div>
		</div>
		<div class="mb-3 row">
			<label class="col-sm-2">첨부파일</label>
			<div class="col-sm-5">
				<input type="file" name="boardFile" class="form-control">
			</div>
		</div>
		<div class="mb-3 row">
			<label class="col-sm-2">작성자</label>
			<div class="col-sm-3">
				<input type="text" id="writer" name="writer" class="form-control">
			</div>
		</div>
		<div class="mb-3 row">
			<div class="col-sm-offset-2 col-sm-10">
				<input type="submit" class="btn btn-primary" value="글쓰기"> 
				<a href="./board.jsp" class="btn btn-secondary">게시판목록 &raquo;</a> 
			</div>
		</div>
		</form>
	</div>
	</div>
	</body>
	