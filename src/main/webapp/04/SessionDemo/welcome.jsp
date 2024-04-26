<%--
  Created by IntelliJ IDEA.
  User: fpkm9
  Date: 2024-04-18
  Time: 오전 11:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--
이 페이지는 로그인이 된 사용자만 접근 가능한 페이지입니다.
설정된 세션명 userId 값이 null이면 response 내장 객체의 sendRedirect() 메서드를 이용하여 session.jsp 파일로 이동합니다.
설정된 세션명 userID 값이 null이 아니면 안내 메시지를 출력합니다. 예) admin님 반갑습니다.
<로그아웃>을 클릭하면 설정된 세션을 해제하도록 작성합니다.
--%>
<%
    String userId = (String) session.getAttribute("userId");
    if (userId == null){
        response.sendRedirect("session.jsp");
    }
    %>

    <%=userId%> 님 환영합니다.

<p><a href="session_out.jsp">로그아웃</a></p>
</body>
</html>
