<%@ page import="online.agatstudio.User" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Show all users</title>
</head>
<body>
<%@include file="header.html"%>
<br><br>
<table border="1">
    <tr>
        <th>Id</th>
        <th>Username</th>
        <th>Password</th>
        <th colspan="3">Operations</th>
    </tr>

    <%
        for (User user : (List<User>) request.getAttribute("users")) {

        %>
    <tr>
        <td><%=user.getId()%></td>
        <td><%=user.getUserName()%></td>
        <td><%=user.getPassword()%></td>
        <td><a href="/users/read?id=<%=user.getId()%>">Read</a></td>
        <td><a href="/users/update?id=<%=user.getId()%>">Update</a></td>
        <td><a href="/users/delete?id=<%=user.getId()%>">Delete</a></td>
    </tr>
    <% } %>
</table>
</body>
</html>
