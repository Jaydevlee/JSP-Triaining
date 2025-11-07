<%@ page contentType="text/html; charset=UTF-8" %>
<html>
<head><title>scope</title></head>
<body>
<%
    request.setCharacterEncoding("UTF-8");

    String req_id = request.getParameter("id");
    String req_pw = request.getParameter("passwd");

    // 전달된 값이 있을 때만 세션/애플리케이션에 반영
    if (req_id != null && !req_id.isEmpty()) {
        session.setAttribute("sessionId", req_id);
        application.setAttribute("applicationId", req_id);
    }
    if (req_pw != null && !req_pw.isEmpty()) {
        session.setAttribute("sessionPw", req_pw);
        application.setAttribute("applicationPw", req_pw);
    }

    // 현재 보이는 값(기존 세션/앱 값 포함)
    String sessId = (String) session.getAttribute("sessionId");
    String sessPw = (String) session.getAttribute("sessionPw");
    String appId  = (String) application.getAttribute("applicationId");
    String appPw  = (String) application.getAttribute("applicationPw");
%>

<p>request영역</p>
ID값 : <%= req_id %> PW값 : <%= req_pw %>

<p>session영역</p>
ID값 : <%= sessId %> PW값 : <%= sessPw %>

<p>application영역</p>
ID값 : <%= appId %> PW값 : <%= appPw %>

</body>
</html>
