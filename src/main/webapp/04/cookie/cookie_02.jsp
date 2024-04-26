<%--
  Created by IntelliJ IDEA.
  User: fpkm9
  Date: 2024-04-17
  Time: 오후 12:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--
쿠키 객체에 저장된 모든 쿠키 값 가져와서 출력하기
1) 쿠키 정보를 얻어오도록 request 내장 객체의 getCookies() 메서드 작성.
2) 얻어온 쿠키 정보의 개수를 출력하도록 Cookie 객체의 length 를 작성.
3) 얻어온 쿠키 정보에서 쿠키 이름과 값을 하나씩 출력하도록 Cookie 객체의 getName(), getvalue() 메서드 작성.
--%>
<%
    boolean isLogin = false;
    String userId = "";
    Cookie[] cookies = request.getCookies(); // request 에서 쿠키를 얻어옴.
    out.println("현재 설정된 쿠키의 개수 => " + cookies.length + "<br>");
    out.println("===========================<br>");
    for (int i = 0; i < cookies.length; i++) {
        out.println("설정된 쿠키의 속성 이름 [ " + i + " ] : " + cookies[i].getName() + "<br>");
        out.println("설정된 쿠키의 속성 값 [ " + i + " ] : " + cookies[i].getValue() + "<br>");
        out.println("--------------------------------------------------------<br>");

    }
    // 얻어온 쿠키 정보를 userId 와 검사하여 로그인 상태를 판단 배열로 저장했으니 for 쓰면 된다

    if (isLogin) {
        out.println(userId + "님이 로그인중입니다.");
    } else {
        out.println("로그인 상태가 아닙니다.");
    }
%>
</body>
</html>
