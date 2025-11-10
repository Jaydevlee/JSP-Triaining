<%@ page contentType="text/html; charset=UTF-8"%>
<html>
<head>
  <title>File Upload</title>
</head>
<body>
  <form action="fileupload04_process.jsp" method="post" enctype="multipart/form-data">
    <p>이 름  : <input type="text" name="name1">
			 제 목  : <input type="text" name="subject1">
			 파 일  : <input type="file" name="filename1">
		</p>
    <p><input type="submit" value="파일 올리기"></p>
    </form>
</body>
</html>