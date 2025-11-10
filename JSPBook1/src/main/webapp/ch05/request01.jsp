<%@ page contentType="text/html; charset=utf-8" %>
<html>
	<head>
		<title>Implicit Object</title>
	</head>
	<body>
		<form action="request01_process.jsp">
			<p> 아 이 디 : <input type="text" name="id"> 
			<p> 비밀번호 : <input type="password" name="password">
			<p> 취미 : 축구<input type="checkbox" name = "hobby" value="soccer">
			농구<input type="checkbox" name = "hobby" value="basketball">
			야구<input type="checkbox" name = "hobby" value="basetball">
			<p> <input type="submit" value="전송" />
		</form>
	</body>
</html>