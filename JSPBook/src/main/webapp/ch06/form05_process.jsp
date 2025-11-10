<%@ page contentType="text/html; charset=utf-8" %>
<html>
	<head>
		<title>From Processing</title>
	</head>
	<body>
	<%
		request.setCharacterEncoding("UTF-8");
	
		// 파라미터로 form데이터 가져오기
		String id = request.getParameter("id");
		String pw = request.getParameter("passwd");
		String name = request.getParameter("name");
		String phone1 = request.getParameter("phone1");
		String phone2 = request.getParameter("phone2");
		String phone3 = request.getParameter("phone3");
		String sex = request.getParameter("sex");
		String[] hobby = request.getParameterValues("hobby"); //checkbox는 여러개 선택할 수 있으므로 배열로 데이터 저장
		String comment = request.getParameter("comment");
	%>
		<p>아이디 : <%=id %></p>
		<p>비밀번호 : <%=pw %></p>
		<p>이름 : <%=name %></p>
		<p>전화번호 : <%=phone1 %> - <%=phone2 %> - <%=phone3 %></p>
		<p>성별 : <%=sex %></p>
		<p>취미 : <%
								for(int i = 0; i < hobby.length; i++) {
									out.println(" " + hobby[i]);
								}
							%></p>
		<p>가입 인사 : <%=comment %></p>
	</body>
</html>