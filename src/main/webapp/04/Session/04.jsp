<%--
  Created by IntelliJ IDEA.
  User: fpkm9
  Date: 2024-04-18
  Time: 오전 11:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<p><h4>----- 세션을 삭제하기 전 -----</h4></p>
<%--
세션에 저장된 세션 속성 삭제하기.
1) 세션에 저장된 세션 속성 이름 userId 를 삭제하도록 session 내장 객체의 removeAttriute() 메서드를 작성.
  --%>
<%
    String userId = (String) session.getAttribute("userId");
    String userPw = (String) session.getAttribute("userPw");
    out.println("설정된 세션 userId : " + userId + "<br>");
    out.println("설정된 세션 userPw : " + userPw);

    session.removeAttribute("userId");
%>
<p><h4>----- 세션을 삭제 후 -----</h4></p>
<%
    userId = (String) session.getAttribute("userId");
    userPw = (String) session.getAttribute("userPw");
    out.println("설정된 세션 userId : " + userId + "<br>");
    out.println("설정된 세션 userPw : " + userPw + "<br>");
%>
</body>
</html>
