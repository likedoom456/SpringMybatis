<!DOCTYPE html><%@ page pageEncoding="UTF-8"%><%@ include file="/common/inc.jsp"%>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>user add page</title>
    </head>
    <body>
        <h1>User Create</h1>
        <form action="${ctx}/user/create" method="post">
            <input name="username" placeholder="USERNAME"><br>
            <input name="password" placeholder="PASSWORD"><br>
            <input name="role" placeholder="ROLE"><br>
            <input type="submit" value="CREATE">
        </form>
    </body>
</html>