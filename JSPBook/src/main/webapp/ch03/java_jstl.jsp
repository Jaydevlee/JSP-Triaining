<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
	<head>
	<title>java_forEach</title>
	</head>	
	<body>
		<table border ="1">
			<c:forEach var="k" begin="1" end="5" step="1">
					<tr>
						<td>1</td> <td>2</td>
					</tr>
			</c:forEach>
		</table>
	</body>
</html>