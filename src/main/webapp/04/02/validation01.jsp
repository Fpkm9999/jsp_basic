<%--
  Created by IntelliJ IDEA.
  User: fpkm9
  Date: 2024-04-17
  Time: 오전 11:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>

<body>
<form name="loginForm" action="validation01_process.jsp" method="post">
    <p> 아 이 디 : <input type="text" name="id">
    <p> 비밀번호 : <input type="text" name="passwd">
    <p><input type="button" value="전송"></p>
</form>
<script type="text/javascript">
    document.addEventListener('DOMContentLoaded', () => {
        const form = document.loginForm;
        const btn = document.querySelector('input[type=button]');
        btn.addEventListener('click', () => {

            if (form.id.value === '') {
                alert("아이디를 입력해주세요");
                form.id.focus();
                return;
            } else if (form.passwd.value === '') {
                alert("비밀번호를 입력해주세요");
                form.passwd.focus();
                return;
            } else if (form.passwd.value.indexOf(form.id.value) !== -1) {
                alert("비밀번호는 ID를 포함할 수 없습니다");
                form.passwd.focus();
                return;
            }
            form.submit();
        });
    });
</script>
</body>
</html>
