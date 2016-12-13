<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="common/inc.jsp"%>
<html>
<head>
    <title>首页</title>
    <script src="${ctx}/static/js/jquery-3.0.0.js"></script>
    <script>
        $(function () {
            $('h1').css("color","blue");
        })
    </script>
</head>
<body>
<h1>首页</h1>
<form action="${ctx}/user/login" method="post">
    <input type="text" name="username" placeholder="username"><br>
    <input type="password" name="password" placeholder="password" value="123"><br>
    <input type="submit" value="login">
</form>
</body>
</html>
