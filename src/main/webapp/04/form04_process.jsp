<%--
  Created by IntelliJ IDEA.
  User: fpkm9
  Date: 2024-04-17
  Time: 오전 9:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        request.setCharacterEncoding("utf-8");
        String userid = request.getParameter("id");
        String password = request.getParameter("passwd");

        String name = request.getParameter("name");

        String phone1 = request.getParameter("phone1");
        String phone2 = request.getParameter("phone2");
        String phone3 = request.getParameter("phone3");

        // 최종 저장되는 phone
        String phone = phone1 + phone2 + phone3;
        String sex = request.getParameter("sex");

        String[] hobby = request.getParameterValues("hobby");
//        String hobby1 = request.getParameter("hobby1");
//        String hobby2 = request.getParameter("hobby2");
//        String hobby3 = request.getParameter("hobby3");
        String commit = request.getParameter("commit");
        /*
          1. 아이디 중복 검사
          2. 휴대폰 번호 유효성 검사
          3. 취미 하나만 뽑아오기( 반환값 Bool이므로 가능)
         */
    %>
    <p> 아이디 : <%=userid%></p>
    <p> 비밀번호: <%=password%></p>
    <p> 이름 : <%=name%></p>
    <p> 휴대폰 : <%=phone%></p>
    <p> 성별 : <%=sex%></p>
    <p> 취미 : <%
        if (hobby != null){
            for (String s: hobby) {
                out.println(" " + s);
            }
        }
        %></p>
<%--    <p> 취미1 : <%=hobby1%></p>--%>
<%--    <p> 취미2 : <%=hobby2%></p>--%>
<%--    <p> 취미3 : <%=hobby3%></p>--%>
    <p> 가입인사 : <%=commit%></p>
</body>
</html>
