<%@ page import="java.util.Calendar" %><%--
  Created by IntelliJ IDEA.
  User: fpkm9
  Date: 2024-04-16
  Time: 오후 12:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    response.setIntHeader("Refresh", 500);
    Calendar calendar = Calendar.getInstance();
    // getInstance -> 싱글톤 패턴 new 을 안씀
    String am_pm;
    int hour = calendar.get(Calendar.HOUR_OF_DAY);
    int minute = calendar.get(Calendar.MINUTE);
    int second = calendar.get(Calendar.SECOND);

    if (hour < 12) {
        am_pm = " AM";
    } else {
        am_pm = " PM";
        if (hour != 12) {
            hour = hour - 12;
        }
    }
    String currentTime = hour + ":" + minute + ":" + second + am_pm;
%>
<p>현재 시간은 <b><%=currentTime %>
    <p><a href="response_data.jsp">구글 홈페이지로 이동하기</a></p>
</b></p>
</body>
</html>
