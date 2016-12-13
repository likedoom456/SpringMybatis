<!DOCTYPE html><%@ page pageEncoding="UTF-8"%><%@ include file="/common/inc.jsp"%>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>user list page</title>
        <script>
            function del() { return confirm('REMOVE?'); }
        </script>
    </head>
    <body>
        <h1>User List</h1>
        <hr/>
        <c:import url="${ctx}/user/create.jsp"/>
        <hr/>
        <table border="1">
            <tr>
                <th>INDEX</th>
                <th>ID</th>
                <th>USERNAME</th>
                <th>PASSWORD</th>
                <th>ROLE</th>
                <th colspan="2">OPERATION</th>
            </tr>
            <c:forEach var="user" items="${sessionScope.list}" varStatus="vs">
            <tr>
                <td>${vs.count}</td>
                <td>${user.id}</td>
                <td>${user.username}</td>
                <td>${user.password}</td>
                <td>${user.role}</td>
                <td><a href="${ctx}/user/queryById/${user.id}">MODIFY</a></td>
                <td><a class="delete" href="${ctx }/user/remove/${user.id}" onclick="return del()">REMOVE</a></td>
            </tr>
            </c:forEach>
        </table>
    </body>
</html>