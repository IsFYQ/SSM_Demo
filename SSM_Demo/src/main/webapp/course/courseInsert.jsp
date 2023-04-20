<%--
  Created by IntelliJ IDEA.
  User: fyq
  Date: 2023/4/19
  Time: 11:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>添加课程信息</title>
  <style>
    form {
      display: flex;
      flex-direction: column;
      align-items: center;
      margin-top: 50px;
    }

    label {
      margin-top: 20px;
      width: 120px;
      text-align: right;
    }

    input[type="text"] {
      width: 200px;
      height: 24px;
      margin-left: 10px;
      border-radius: 3px;
      border: 1px solid #ccc;
      padding: 5px;
    }

    button[type="reset"], button[type="submit"] {
      margin-top: 20px;
      width: 80px;
      height: 30px;
      border-radius: 3px;
      border: none;
      color: #fff;
      background-color: #4CAF50;
      cursor: pointer;
    }

    button[type="reset"]:hover, button[type="submit"]:hover {
      background-color: #3e8e41;
    }
  </style>
</head>
<body>
<h3>添加课程信息</h3>
<form action="insert" method="post">
  <label>课程名称：</label>
  <input type="text" name="cname" value="<%=request.getParameter("cname")%>">
  <label>选课人数：</label>
  <input type="text" name="count" value="<%=request.getParameter("count")%>">
  <label>授课教师：</label>
  <input type="text" name="teacher" value="<%=request.getParameter("teacher")%>">
  <button type="reset">取消</button>
  <button type="submit">添加</button>
</form>
</body>
</html>