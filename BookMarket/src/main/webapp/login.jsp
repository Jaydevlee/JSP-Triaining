<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head>
<title>login</title>
</head>
<body>
<div class="container py-4">
	<%@ include file="menu.jsp" %>
	<h1 class="text-center">로그인 페이지 입니다.</h1>
	<div class="container"> 
		<form>
			<div >
				<label for="login_id" class="mb-1">ID</label>
				<input type="text" id="login_id" class="form-control mb-2 px-1" placeholder="아이디(7~15자)">
				<p id="correctId" class="mb-3"></p> 
				<label for="login_pw" class="mb-1">Password</label>
				<input type="password" id="login_pw" class="form-control mb-2 px-1" placeholder="비밀번호(7~15자)">
				<p id="correctPw" class="mb-3"></p>
				<button type=submit class="btn btn-primary">Login</button>
				<button type=button class="btn btn-primary">Sign in</button>
			</div>
		</form>
	</div>
	<%@ include file="footer.jsp" %>
</div>
</body>
</html>