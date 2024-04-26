<%--
  Created by IntelliJ IDEA.
  User: fpkm9
  Date: 2024-04-16
  Time: 오전 10:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
  <%--
  request 내장 객체로 폼 페이지에서 아이디와 비밀번호를 전송 받아 출력하기.
  1) 폼 페이지에서 입력한 한글을 처리하도록 request 내장 객체의 setCharacterEncoding() 메서드에 문자 인코딩 유형을 utf-8로 작성.
  2) 입력된 아이디와 비밀번호를 폼 문으로 부터 전송받도록 request 내장 객체의 getParameter() 메서드를 작성.
  3) 폼 문으로부터 전송받은 아이디와 비밀번호를 출력하도록 표현문 태그를 작성.
  --%>
  <%
    String info = request.getQueryString();
  %>
  <p>전송된 요청 파라미터 : <b><%=info %></b>
</body>
</html>
