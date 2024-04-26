<%--
  Created by IntelliJ IDEA.
  User: fpkm9
  Date: 2024-04-18
  Time: 오전 10:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--
세션에 저장된 속성 값 가져와 출력하기
1) 세션에 저장된 세션 속성 이름 userId, userPw 의 속성 값을 가져오도록
session 내장 객체의 getAttribute() 메서드를 작성
--%>
<%
    String userId = (String) session.getAttribute("userId"); // 세션의 속성값은 Object 라서 다운캐스팅을 해야함.
    String userPw = (String) session.getAttribute("userPw");

    out.println("설정된 세션의 속성 값 [1] : " + userId + "<br>");
    out.println("설정된 세션의 속성 값 [2] : " + userPw);
%>

</body>
</html>
