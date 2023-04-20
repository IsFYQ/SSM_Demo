<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: fyq
  Date: 2023/4/17
  Time: 15:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>main</title>
    <style>
        .head {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 20px;
        }
        input[type="text"] {
            padding: 5px;
            font-size: 16px;
            border: none;
            border-bottom: 1px solid black;
            margin-right: 10px;
        }
        button[type="submit"] {
            padding: 5px 15px;
            font-size: 16px;
            border: none;
            background-color: #4CAF50;
            color: white;
            cursor: pointer;
        }
        button[type="submit"]:hover {
            background-color: #3e8e41;
        }
        table {
            border-collapse: collapse;
            width: 100%;
        }
        th, td {
            text-align: left;
            padding: 8px;
        }
        th {
            background-color: #4CAF50;
            color: white;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        a {
            margin-left: 10px;
            color: red;
        }
    </style>
</head>
<body>
<div class="head">
    <h3>选课详情</h3>
    <form action="bycid">
        课程名：<input type="text" name="cname" placeholder="请输入课程名">
        <button type="submit">查询</button>
    </form>
    <form action="bysid">
        学生名：<input type="text" name="sname" placeholder="请输入学生姓名">
        <button type="submit">查询</button>
    </form>
</div>
<form action="choose" method="post">
    <table border="1px">
        <thead>
        <tr>
            <th>id</th>
            <th>姓名</th>
            <th>年龄</th>
            <th>课程</th>
            <th>操作</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${requestScope.q_chooses}" var="choose">
            <tr>
                <td>${choose.student.id}</td>
                <td>${choose.student.name}</td>
                <td>${choose.student.age}</td>
                <td>${choose.course.cname}</td>
                <td>
                    <a href="delete?cid=${choose.choose_id}">删除</a>
                    <a href="update?cid=${choose.choose_id}&sid=${choose.student.id}&name=${choose.student.name}&courseid=${choose.course.cid}">更新</a>
                </td>
            </tr>
<%--            <p>${choose.student.id}</p>--%>
<%--            <p>${choose.course.cid}</p>--%>
            <c:if test="${empty choose.student}">
                <p>choose.student is empty!</p>
            </c:if>
            <c:if test="${empty choose.course}">
                <p>choose.course is empty!</p>
            </c:if>
        </c:forEach>
        </tbody>
    </table>
</form>
</body>
</html>
