<%--
  Created by IntelliJ IDEA.
  User: fpkm9
  Date: 2024-04-15
  Time: 오후 12:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    Today
    <%
        java.util.Date today = new java.util.Date();
        out.println(today);
    %>

</body>
</html>
