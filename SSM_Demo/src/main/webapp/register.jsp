<%--
  Created by IntelliJ IDEA.
  User: Think
  Date: 2023/4/17
  Time: 10:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        body {
            background-color: #f5f5f5;
            font-family: Arial, sans-serif;
        }

        form {
            background-color: white;
            border-radius: 4px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            margin: 50px auto;
            max-width: 500px;
            padding: 20px;
        }

        input[type="text"],
        input[type="password"] {
            appearance: none;
            background-color: #f0f0f0;
            border: none;
            border-radius: 2px;
            display: block;
            font-size: 16px;
            line-height: 1.5;
            padding: 10px;
            width: 100%;
            margin-top: 10px;
        }

        input[type="submit"] {
            background-color: #007bff;
            border: none;
            border-radius: 2px;
            color: white;
            cursor: pointer;
            font-size: 16px;
            line-height: 1.5;
            padding: 10px;
            width: 100%;
            margin-top: 20px;
        }

        a {
            color: #007bff;
            text-decoration: none;
            display: block;
            margin-top: 20px;
        }

        h1 {
            text-align: center;
            margin-top: 0;
        }
    </style>
</head>
<body>
<form action="register" method="post">
    姓名：<input type="text" name="name"><br>
    密码：<input type="password" name="pwd"><br>
    年龄：<input type="text" name="age"><br>
    <input type="submit" value="注册">
    <a href="login.jsp">已有账号，去登录</a>
</form>
</body>
</html>
