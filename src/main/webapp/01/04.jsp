<%--
  Created by IntelliJ IDEA.
  User: fpkm9
  Date: 2024-04-15
  Time: 오전 11:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        int count = 0; // 지역 변수 선언
    %>
    Page Count is
    <%
        out.println(++count); // 전역 변수 1 증가. 새로 고침을 하면 숫자가 증가.
    %>
</body>
</html>
