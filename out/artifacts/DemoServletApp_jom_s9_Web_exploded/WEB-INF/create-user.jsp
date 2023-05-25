<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create new user</title>
</head>
<body>
<%@include file="header.html"%>
<br><br>

<form action="/users/create" method="post">
  <table>
    <tr>
      <td>
        <label for="username">Username: </label>
      </td>
      <td>
        <input type="text" name="username" id="username" placeholder="Username">
      </td>
    </tr>
    <tr>
      <td>
        <label for="password">Password: </label>
      </td>
      <td>
        <input type="password" name="password" placeholder="Password">
      </td>
    </tr>
    <tr>
      <td>
        <input type="submit" name="submit" value="Create">
      </td>
      <td>
        <input type="reset" name="clear" value="Clear">
      </td>
    </tr>
  </table>
</form>


</body>
</html>
