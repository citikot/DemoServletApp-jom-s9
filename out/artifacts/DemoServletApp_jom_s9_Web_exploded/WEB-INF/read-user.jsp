<%@ page import="online.agatstudio.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Show Info About User</title>
</head>
<body>
<%@include file="header.html"%>
<br><br>

<%
  User user = (User) request.getAttribute("user");
%>
<p>Id: <%=user.getId()%></p>
<p>Username: <%=user.getUserName()%></p>
<p>Password: <%=user.getPassword()%></p>
</body>
</html>
