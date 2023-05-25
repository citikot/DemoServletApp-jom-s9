<%@ page import="online.agatstudio.User" %><%--
  Created by IntelliJ IDEA.
  User: apish
  Date: 5/25/2023
  Time: 23:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update Existing User</title>
</head>
<body>
<%@include file="header.html"%>
<br><br>


<form action="/users/update" method="post">

    <%
        User user = (User) request.getAttribute("user");
    %>
    <table>
        <tr>
            <td>
                <label for="id">Id: </label>
            </td>
            <td>
                <input type="text" name="id" id="id" placeholder="Id" value="<%=user.getId()%>" disabled>
            </td>
        <tr>

        </tr>
        <td>
            <label for="username">Username: </label>
        </td>
        <td>
            <input type="text" name="username" id="username" placeholder="Username" value="<%=user.getUserName()%>">
        </td>
        </tr>
        <tr>
            <td>
                <label for="password">Password: </label>
            </td>
            <td>
                <input type="password" name="password" placeholder="Password" value="<%=user.getPassword()%>">
            </td>
        </tr>
        <tr>
            <td>
                <input type="submit" name="submit" value="Update">
            </td>
            <td>
                <input type="reset" name="clear" value="Clear">
            </td>
        </tr>
    </table>
</form>


</body>
</html>
