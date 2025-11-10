<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head>
	<title>File Upload</title>
</head>
<body>
	<form name="fileForm" method="post" enctype="multipart/form-data" action="./fileupload02_process.jsp">
		<p>이 름 1 : <input type="text" name="name1">
			 제 목 1 : <input type="text" name="subject1">
			 파 일 1 : <input type="file" name="filename1">
		</p>
		<p>이 름 2 : <input type="text" name="name2">
			 제 목 2 : <input type="text" name="subject2">
			 파 일 2 : <input type="file" name="filename2">
		</p>
		<p>이 름 3 : <input type="text" name="name3">
			 제 목 3 : <input type="text" name="subject3">
			 파 일 3 : <input type="file" name="filename3">
		</p>
		<p><input type="submit" value="파일 올리기"></p>
	</form>
</body>
</html>