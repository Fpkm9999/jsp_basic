<%--
  Created by IntelliJ IDEA.
  User: fpkm9
  Date: 2024-04-17
  Time: 오후 5:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String userId = request.getParameter("id");
    String userPw = request.getParameter("passwd");

    // 예전 방식임 <-- DB 안거치고 생성
    if (userId.equals("admin") && userPw.equals("1234")){ // 로그인 정보가 맞으면
        Cookie cookieId = new Cookie("userId",userId); // 쿠키 생성. Cookie 클래스를 이용해서 쿠키 객체 생성.
        Cookie cookiePw = new Cookie("userPw",userPw);
        response.addCookie(cookieId); // response 할 때 쿠키도 같이 보낼 것.
        response.addCookie(cookiePw);
        out.println("쿠키 생성이 성공했습니다.<br>"); //
        out.println(userId + "님 환영합니다.");
    } else {
        out.println("쿠키 생성이 실패했습니다.");
    }
%>
</body>
</html>