<%--
  Created by IntelliJ IDEA.
  User: fpkm9
  Date: 2024-04-18
  Time: 오전 9:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%--
    쿠키 객체에 저장된 모든 쿠키 삭제하기.
    1) 쿠키 정보를 얻어오도록 request 내장 객체의 getCookies() 메서드 작성.
    2) 얻어온 모든 쿠키를 삭제하도록 Cookie 객체의 setMaxAge() 메서드에 유효 기간을 0으로 설정.
    3) 웹 페이지 cookie02.jsp 로 이동하도록 response 내장 객체의 sendRedirect() 메서드를 작성.
    --%>
    <%
        Cookie[] cookies = request.getCookies(); // 쿠기를 모두 가져옴
        for (int i = 0; i < cookies.length; i++) { // 쿠키 개수만큼 반복
            cookies[i].setMaxAge(0); // 쿠키의 유효기간을 0으로 설정 => 즉시 쿠키 삭제
            response.addCookie(cookies[i]);
        }
        response.sendRedirect("cookie_03.jsp");
    %>

</body>
</html>
