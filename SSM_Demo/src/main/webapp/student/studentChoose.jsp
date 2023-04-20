<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: fyq
  Date: 2023/4/19
  Time: 13:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>学生选课</title>
</head>
<body>
<h3>学生选课</h3>
<form action="choose" method="post">
    <input type="hidden" name="student.id" value="<%=request.getParameter("sid")%>">
    学生姓名：<input type="text" disabled="disabled" value="<%=request.getParameter("sname")%>" name="student.name">

    选择课程：<select name="course" id="cname">
    <c:forEach items="${sessionScope.c_courses}" var="course">
        <option value="${course.cname}">${course.cname}</option>
    </c:forEach>
</select>
    <button type="submit" class="sbtn">提交</button>
</form>
</body>
</html>
