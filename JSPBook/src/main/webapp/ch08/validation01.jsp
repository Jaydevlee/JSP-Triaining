<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head>
	<title>Validation</title>
	<script type="text/javascript">
		function checkForm() {
			alert("아이디 : " + document.loginForm.id.value + "\n" +
						"비밀번호 : " + document.loginForm.pw.value);
		}
	</script>
</head>
<body>
	<form name="loginForm">
		<p> 아 이 디 : <input type="text" name="id"></p>
		<p> 비밀번호 : <input type="password" name="pw"></p>
		<p><input type="submit" value="전송" onclick="checkForm()"></p>
	</form>
</body>
</html>