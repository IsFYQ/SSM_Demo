<%--
  Created by IntelliJ IDEA.
  User: fyq
  Date: 2023/4/19
  Time: 19:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>新加学生</title>
</head>
<body>
<form action="insert" method="post">
  学生姓名：<input type="text" name="name"><br>
  年龄：<input type="text" name="age"><br>
  密码：<input type="password" name="pwd"><br>
  <button type="submit">增加</button>
</form>
</body>
</html>
