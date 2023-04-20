<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: fyq
  Date: 2023/4/17
  Time: 15:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>更新</title>
    <style>
        /* 添加样式，美化表单 */
        form {
            margin-top: 20px;
            border: 2px solid #ccc;
            padding: 20px;
            width: 400px;
            border-radius: 10px;
            font-family: Arial, Helvetica, sans-serif;
        }

        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            padding: 8px 12px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            margin-left: 75px;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
<form action="update" method="post">
    <input type="hidden" name="choose_id" value="<%=request.getParameter("cid")%>">
  姓名：<input type="text" name="name" disabled="disabled" value="<%=request.getParameter("name")%>"><br/>
  课程：
    <select name="course" id="cname">
        <c:forEach items="${sessionScope.c_courses}" var="course">
            <option value="${course.cname}">${course.cname}</option>
        </c:forEach>
    </select>
    <br>
  <input type="submit" value="更新">
</form>

</body>
</html>
