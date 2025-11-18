<%@page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="sessionId" value="${sessionScope.sessionId}" />
<!-- 스크립틀릿으로 sessionId 변수를 설정하면 JSTL이 인식을 못한다. 따라서 항상 empty로 판단되기 때문에 
		JSTL/EL 방식으로 변수를 선언해야 한다.
-->
<header class="pb-3 mb-4 border-bottom">
	<div class="container">
		<div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-stat">
			<a href="<c:url value='/welcome.jsp'/>" class="align-items-center text-dark text-decoration-none">
     		<svg  width="32" height="32" fill="currentColor" class="bi bi-house-fill" viewBox="0 0 16 16">
  				<path d="M8.707 1.5a1 1 0 0 0-1.414 0L.646 8.146a.5.5 0 0 0 .708.708L8 2.207l6.646 6.647a.5.5 0 0 0 .708-.708L13 5.793V2.5a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5v1.293L8.707 1.5Z"/>
  				<path d="m8 3.293 6 6V13.5a1.5 1.5 0 0 1-1.5 1.5h-9A1.5 1.5 0 0 1 2 13.5V9.293l6-6Z"/>
				</svg>   
     		<span class="fs-4">Home</span>
  		</a>
     <ul class="nav nav-pills">
     	<c:choose>
     		<c:when test="${empty sessionId}"><!--스크릾틀릿 유지하면서 "${empty sessionScope.sessionId}"도 가능  -->
     			<li class="nav-item"><a class="nav-link" href="<c:url value="/member/loginMember.jsp"/>">로그인</a></li>
     			<li class="nav-item"><a class="nav-link" href="<c:url value="/member/addMember.jsp"/>">회원가입</a></li>
     		</c:when>
     		<c:otherwise>
     			<li style="padding-top: 7px; color: white">[${sessionId}님]</li>
     			<li class="nav-item"><a class="nav-link" href="<c:url value="/member/logoutMember.jsp"/>">로그아웃</a></li>
     			<li class="nav-item"><a class="nav-link" href="<c:url value="/member/updateMember.jsp"/>">회원 수정</a></li>
     		</c:otherwise>
     	</c:choose>
     	<li class="nav-item"><a href="<c:url value='/books.jsp'/>" class="nav-link">도서 목록</a></li>
     	<li class="nav-item"><a href="<c:url value='/addBook.jsp'/>" class="nav-link">도서 등록</a></li>
     	<li class="nav-item"><a href="<c:url value='/editBook.jsp?edit=update'/>" class="nav-link">도서 수정</a></li>
     	<li class="nav-item"><a href="<c:url value='/editBook.jsp?edit=delete'/>" class="nav-link">도서 삭제</a></li>
     	<li class="nav-item"><a href="<c:url value='/board.jsp'/>"  class="nav-link">게시판</a></li>
     </ul>
   </div>
  </div>
</header>  