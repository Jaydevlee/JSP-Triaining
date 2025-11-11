<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head>
	<title>Validation</title>
	<script type="text/javascript">
		function checkLogin() {
			let form = document.loginForm;
			
			if(form.id.value.length <4 || form.id.value.length>12) {
				alert("아이디는 4-12자 이내로 입력해야 합니다!");
				form.id.select();
				return false;
			}
			if(form.pw.value.length <4){
				alert("비밀번호는 4자 이상으로 입력해야 합니다!");
				form.pw.select();
				return false;
			}
			form.submit();
		}
	</script>
</head>
<body>
	<form name="loginForm" action="validation03_process.jsp" method="post">
		<p> 아 이 디 : <input type="text" name="id"></p>
		<p> 비밀번호 : <input type="password" name="pw"></p>
		<p><input type="submit" value="전송" onclick="return checkLogin()"></p>
	</form>
</body>
</html>