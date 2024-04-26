<%--
  Created by IntelliJ IDEA.
  User: fpkm9
  Date: 2024-04-18
  Time: 오전 9:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--
cookie_process.jsp 파일을 생성합니다.
request 내장 객체의 getParameter() 메서드를 이용하여 전송된 요청 파라미터 값을 받습니다.
아이디와 비밀번호가 인증되면 아이디 값을 쿠키명 userId 의 쿠키 값으로 설정합니다.
response 내장 객체의 sendRedirect() 메서드를 이용하여 welcome.jsp 파일로 이동하도록 작성합니다.
--%>
<%
    out.println("페이지 이동 process");
    String userId = request.getParameter("id");
    String userPw = request.getParameter("passwd");

    if (userId.equals("admin") && userPw.equals("1234")) { // 로그인 정보가 맞으면
        Cookie cookieId = new Cookie("userId", userId);
        Cookie cookiePw = new Cookie("userPw", userPw);

        response.addCookie(cookieId);
        response.addCookie(cookiePw);

        out.println("쿠키 생성이 성공했습니다."); //

    } else {
        out.println("쿠키 생성이 실패했습니다.");
    }

    response.sendRedirect("welcome.jsp");
%>

</body>
</html>
