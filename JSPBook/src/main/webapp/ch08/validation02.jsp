<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head>
	<title>Validation</title>
	<script type="text/javascript">
		function checkLogin() {
			var form=document.loginForm;
			if(form.id.value==""){
				alert("아이디를 입력해주세요.");
				form.id.focus();
				return false;
			} else if (form.pw.value==""){
				alert("비밀번호를 입력해주세요.");
				form.pw.focus();
				return false;
			}
			form.submit();
		}
	</script>
</head>
<body>
	<form name="loginForm" action="validation02_process.jsp" method="post">
		<p> 아 이 디 : <input type="text" name="id"></p>
		<p> 비밀번호 : <input type="password" name="pw"></p>
		<p><input type="submit" value="전송" onclick=" return checkLogin()"></p>
	</form>
</body>
</html>