<!DOCTYPE html><%@ page pageEncoding="UTF-8"%><%@ include file="/common/inc.jsp"%>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>user edit page</title>
    </head>
    <body>
        <h1>User Edit</h1>
        <form action="${ctx}/user/modify" method="post">
            <input type="hidden" name="id" value="${sessionScope.user.id}">
            USERNAME: <input name="username" value="${sessionScope.user.username}"><br>
            PASSWORD: <input name="password" value="${sessionScope.user.password}"><br>
            ROLE: <input name="role" value="${sessionScope.user.role}"><br>
            <input type="submit" value="MODIFY">
        </form>
    </body>
</html>