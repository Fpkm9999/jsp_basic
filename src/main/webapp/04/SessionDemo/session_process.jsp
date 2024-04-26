<%--
  Created by IntelliJ IDEA.
  User: fpkm9
  Date: 2024-04-18
  Time: 오전 11:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--
request 내장 객체의 getParameter() 메서드를 이용하여 전송된 요청 파라미터 값을 받습니다.
아이디와 비밀번호가 인증되면 아이디 값을 세션명 userId 의 세션 값으로 설정합니다.
response 내장 객체의 sendRedirect() 메서드를 이용하여 welcome.jsp 파일로 이동하도록 작성합니다.
--%>
<%
    String userId =  request.getParameter("userId"); // 세션의 속성값은 Object 라서 다운캐스팅을 해야함.
    String userPw =  request.getParameter("userPw");

    if (userId.equals("admin") && userPw.equals("1234")) { // 로그인 정보가 맞으면
        session.setAttribute("userId", userId); // 아이디 값을 세션명 userId 의 세션 값으로 설정
    }
    response.sendRedirect("welcome.jsp");
%>

</body>
</html>
