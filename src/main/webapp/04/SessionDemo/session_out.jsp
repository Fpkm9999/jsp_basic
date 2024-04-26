<%--
  Created by IntelliJ IDEA.
  User: fpkm9
  Date: 2024-04-18
  Time: 오전 11:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--
설정된 모든 세션명을 해제하도록 작성합니다.
response 내장 객체의 sendRedirect() 메서드를 이용하여 session.jsp 파일로 이동하도록 작성합니다.
--%>
  <%
    String userId = (String) session.getAttribute("userId");
    String userPw = (String) session.getAttribute("userPw");

    out.println("설정된 세션 userId : " + userId + "<br>");
    out.println("설정된 세션 userPw : " + userPw + "<br>");
    session.invalidate();

    response.sendRedirect("session.jsp");
  %>

</body>
</html>
