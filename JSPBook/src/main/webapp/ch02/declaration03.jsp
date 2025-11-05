<html>
	<head>
		<title>Scripting tag</title>
	</head>
	<body>
		<%! String makeItLower(String data) {
				return data.toLowerCase(); //선언문에서 메소드 선언만 가능
		} %>
		
		<%
			out.println(makeItLower("Hello World"));
		%>
	</body>
</html>