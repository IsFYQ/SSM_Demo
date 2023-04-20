<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: fyq
  Date: 2023/4/19
  Time: 10:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>课程详情</title>
    <style>
        .head {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 20px;
        }

        .head h3 {
            margin: 0;
        }

        .head form {
            display: flex;
            align-items: center;
        }

        .head input[type="text"] {
            padding: 5px;
            margin-right: 10px;
            width: 200px;
            border-radius: 3px;
            border: 1px solid #ccc;
        }

        .head button[type="submit"] {
            padding: 5px 10px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 3px;
            cursor: pointer;
            transition: all 0.3s ease;
        }

        .head button[type="submit"]:hover {
            background-color: #0069d9;
        }

        .insert {
            background-color: #0069d9;
            width: 50px;
            height: 30px;
        }

        .inframe {
            position: absolute;
            top: 100px;
            width: 50%;
            display: none;
        }

        .inframe iframe {
            position: absolute;
            right: 0;
            top: 0px;
            height: 100%;
            width: 100%;
            border: none;
            transition: all 0.3s ease;
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
            background-color: #007bff;
            color: #fff;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        a {
            margin-right: 10px;
            color: #007bff;
            transition: all 0.3s ease;
        }

        a:hover {
            color: #0069d9;
        }
    </style>
</head>
<body>
<div class="head">
    <h3>课程详情</h3>
    <form action="query" method="post">
        <input type="text" name="q_cname" placeholder="请输入课程名称">
        <button type="submit">查询</button>
    </form>
    <div class="insert">新增课程
        <div class="inframe">
            <iframe src="courseInsert.jsp" scrolling="no" width="500px" frameborder="0"></iframe>
        </div>
    </div>
</div>

<form action="course" method="post">
    <table>
        <thead>
        <tr>
            <th>课程编号</th>
            <th>课程名称</th>
            <th>选课人数</th>
            <th>授课老师</th>
            <th>操作</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${requestScope.c_courses}" var="course">
            <tr>
                <td>${course.cid}</td>
                <td>${course.cname}</td>
                <td>${course.c_count}</td>
                <td>${course.teacher}</td>
                <td>
                    <a href="delete?cid=${course.cid}">删除</a>
                    <a href="courseUpdate.jsp?cid=${course.cid}&cname=${course.cname}&c_count=${course.c_count}&teacher=${course.teacher}">更新</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</form>
<script>
    const insertBtn = document.querySelector('.insert');
    const inframe = document.querySelector('.inframe');

    insertBtn.addEventListener('click', () => {
        if (inframe.style.display === 'none') {
            inframe.style.display = 'block';
        } else {
            inframe.style.display = 'none';
        }
    });
</script>
</body>
</html>