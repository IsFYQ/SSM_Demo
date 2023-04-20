<%--
  Created by IntelliJ IDEA.
  User: fyq
  Date: 2023/4/17
  Time: 15:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录</title>
    <style type="text/css">
        /*添加页面背景颜色*/
        body{
            background-color: #f0f0f0;
        }
        /*居中登录框*/
        form{
            margin: 20px auto;
            width: 300px;
            height: 200px;
            border: 1px solid #ddd;
            padding: 20px;
            background-color: #fff;
            box-shadow: 2px 2px 4px rgba(0,0,0,0.3);
        }
        /*设置表单样式*/
        input[type="text"], input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-top: 10px;
            margin-bottom: 10px;
            border-radius: 5px;
            box-sizing: border-box;
            border: 2px solid #ccc;
            font-size: 16px;
        }
        input[type="submit"]{
            display: block;
            margin: 0 auto;
            background-color: #4CAF50;
            color: white;
            font-size: 16px;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        /*去注册链接样式*/
        a{
            color: #999;
            float: right;
            margin-top: 10px;
            margin-right: 5px;
        }
        /*调整标题位置和字体SIZE*/
        h1{
            text-align: center;
            font-size: 24px;
            margin-top: 10px;
        }
    </style>
</head>

<body>
<form action="login" method="post">
    姓名：<input type="text" name="name"><br/>
    密码：<input type="password" name="pwd"><br/>
    <input type="submit" value="登录">
    <a href="register.jsp">去注册</a>
</form>
</body>
</html>
