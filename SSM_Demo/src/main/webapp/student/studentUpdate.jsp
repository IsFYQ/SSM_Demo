<%--
  Created by IntelliJ IDEA.
  User: fyq
  Date: 2023/4/19
  Time: 12:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>更新学生信息</title>
    <style>
        body{
            background-color: #F2F2F2;
            color: #333333;
        }
        .container{
            margin: 50px auto;
            width: 500px;
            border: 1px solid #CCCCCC;
            padding: 20px;
            background-color: #FFFFFF;
        }
        h3{
            font-size: 24px;
            text-align: center;
            margin-bottom: 30px;
        }
        label{
            display: inline-block;
            width: 80px;
            margin-right: 10px;
        }
        input[type="text"]{
            width: 200px;
            padding: 5px;
            border: 1px solid #CCCCCC;
            border-radius: 3px;
            outline: none;
        }
        .form-group{
            margin-bottom: 20px;
        }
        button[type="submit"]{
            padding: 8px 16px;
            border: none;
            border-radius: 3px;
            background-color: #333333;
            color: #FFFFFF;
            cursor: pointer;
            transition: all 0.3s ease;
        }
        button[type="submit"]:hover{
            background-color: #FFFFFF;
            color: #333333;
        }
    </style>
</head>
<body>
<div class="container">
    <h3>更新学生信息</h3>
    <form action="update" method="post">
        <input type="hidden" name="id" value="<%=request.getParameter("sid")%>">
        <div class="form-group">
            <label for="name">姓名：</label>
            <input type="text" id="name" name="name" value="<%=request.getParameter("sname")%>">
        </div>
        <div class="form-group">
            <label for="age">年龄：</label>
            <input type="text" id="age" name="age" value="<%=request.getParameter("age")%>">
        </div>
        <button type="submit">更新</button>
    </form>
</div>
</body>
</html>