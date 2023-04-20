<%--
  Created by IntelliJ IDEA.
  User: fyq
  Date: 2023/4/19
  Time: 11:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<html>
<head>
  <title>更新课程信息</title>
  <style type="text/css">
    body {
      font-family: Arial, sans-serif;
      background-color: #f5f5f5;
    }
    h3 {
      color: #333;
      text-align: center;
      margin-top: 50px;
    }
    form {
      width: 50%;
      margin: 0 auto;
      background-color: #fff;
      padding: 20px;
      border-radius: 5px;
      box-shadow: 0px 0px 10px #ccc;
    }
    label {
      display: block;
      margin-bottom: 10px;
      color: #333;
    }
    input[type="text"] {
      width: 100%;
      padding: 10px;
      border-radius: 5px;
      border: 1px solid #ccc;
    }
    button[type="reset"], button[type="submit"] {
      display: block;
      margin: 20px auto 0;
      padding: 10px 20px;
      border-radius: 5px;
      border: none;
      color: #fff;
      background-color: #333;
      cursor: pointer;
    }
    button[type="reset"]:hover, button[type="submit"]:hover {
      background-color: #555;
    }
  </style>
</head>
<body>
<h3>更新课程信息</h3>
<form action="update" method="post">
  <input type="hidden" name="cid" value="<%=request.getParameter("cid")%>">
  <label>课程名称：</label>
  <input type="text" name="cname" value="<%=request.getParameter("cname")%>"><br>
  <label>选课人数：</label>
  <input type="text" name="c_count" value="<%=request.getParameter("c_count")%>"><br>
  <label>授课教师：</label>
  <input type="text" name="teacher" value="<%=request.getParameter("teacher")%>"><br>
  <button type="reset">取消</button>
  <button type="submit">更新</button>
</form>
</body>
</html>
