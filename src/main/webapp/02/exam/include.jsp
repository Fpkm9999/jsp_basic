<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: fpkm9
  Date: 2024-04-16
  Time: 오전 9:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
  <%--
  2. page 디렉티브 태그를 이용하여 다음 조건에 맞게 JSP 애플리케이션을 만들고 실행 결과를 확인하시오.
  1) header.jsp 파일 생성
  <h4> 태그를 이용하여 Hello, Java Server Pages. 를 선언
  2) include.jsp 파일을 생성
  include 디렉티브 태그를 이용하여 외부파일 header.jsp 의 내용을 포함.
  java.util.Date 클래스를 이용하여 현재 시간을 출력
    --%>
  <%@ include file="_header.jsp"%>
  현재 시간 : <%= new Date()%>
</body>
</html>
