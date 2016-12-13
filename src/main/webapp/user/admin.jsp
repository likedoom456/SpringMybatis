<!DOCTYPE html><%@ page pageEncoding="UTF-8"%><%@ include file="/common/inc.jsp"%>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>user admin page</title>
    </head>
    <body>
    <c:if test="${sessionScope.user eq null}">
        <c:redirect url="${ctx}/index.jsp"/>
    </c:if>
        <h1> ${sessionScope.user.role}</h1>
        <p><a href="${ctx}/user/create.jsp">CREATE</a></p>
    </body>
</html>