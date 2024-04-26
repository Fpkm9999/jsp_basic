<%--
  Created by IntelliJ IDEA.
  User: fpkm9
  Date: 2024-04-18
  Time: 오전 9:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--
cookie_out.jsp 파일을 생성합니다.
설정된 모든 쿠키명을 해제하도록 작성합니다.
response 내장 객체의 sendRedirect() 메서드를 이용하여 cookie.jsp 파일로 이동하도록 작성합니다.
--%>
<%
  Cookie[] cookies = request.getCookies(); // 쿠기를 모두 가져옴
  for (int i = 0; i < cookies.length; i++) { // 쿠키 개수만큼 반복
    cookies[i].setMaxAge(0); // 쿠키의 유효기간을 0으로 설정 => 즉시 쿠키 삭제
    response.addCookie(cookies[i]);
  }
  response.sendRedirect("cookie.jsp");
%>
</body>
</html>
