<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
	<head>
		<title>회원가입</title>
		<link href="../resources/bootstrap.min.css" rel="stylesheet" />
		<script type="text/javascript">
			function checkForm(){
				if(!document.logIn.user_id.value){
						alert("아이디를 입력하세요.")
						return false;
				}
				if(!document.logIn.user_pw.value){
					alert("비밀번호를 입력하세요.")
					return false;
			}
			}
		</script>
	</head>
	<body>
		<div class="container py-4">
			<jsp:include page="/menu.jsp" />
			<div class="p-5 mb-4 bg-body-tertiary rounded-3">
      <div class="container-fluid py-5">
        <h1 class="display-5 fw-bold">로그인</h1>
        <p class="col-md-8 fs-4">LogIn</p>      
      </div>
    	</div>
    	
    	<div class="row align-items-md-stretch text-center">
    	 	<form name="logIn" action="./processLoginMember.jsp" class="form-horizontal" method="post">
    	 		<div class="mb-3 row">
						<label class="col-sm-2">아이디</label>
						<div class="col-sm-3">
							<input type="text" id="user_id" name="user_id" class="form-control">
						</div>
					</div>
					<div class="mb-3 row">
						<label class="col-sm-2">비밀번호</label>
						<div class="col-sm-3">
							<input type="password" id="user_pw" name="user_pw" class="form-control">
						</div>
					</div>
					<div class="mb-3 row">
						<div class="col-sm-offset-2 col-sm-10 ">
					 		<input type="submit" class="btn btn-primary " value="로그인" >
					 	</div>
					</div>
    	 	</form>
   		</div>
   		<jsp:include page="/footer.jsp" />
   	</div>
	</body>
</html>	