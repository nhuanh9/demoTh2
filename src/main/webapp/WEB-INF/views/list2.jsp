<%--
  Created by IntelliJ IDEA.
  User: daonhuanh
  Date: 7/14/21
  Time: 3:44 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table>
<c:forEach var="c" items="${customers}">
    <tr>
        <td>
            <c:out value="${c.id}"/>
        </td>
        <td>
            <a href="/edit?id=${c.id}">${c.name}</a>
        </td>
        <td>
            <c:out value="${c.email}"/>
        </td>
        <td>
            <c:out value="${c.address}"/>
        </td>
    </tr>
</c:forEach>
</table>
</body>
</html>
