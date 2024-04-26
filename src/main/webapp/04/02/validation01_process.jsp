<%--
  Created by IntelliJ IDEA.
  User: fpkm9
  Date: 2024-04-17
  Time: 오전 11:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String userid = request.getParameter("id");
    String password = request.getParameter("passwd");
%>




<p> 아이디 : <%=userid%>
</p>
<p> 비밀번호: <%=password%>
</p>
</body>
</html>
