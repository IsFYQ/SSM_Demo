<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: fyq
  Date: 2023/4/19
  Time: 11:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html> <head> <title>学生信息</title> <style> body { margin: 0; padding: 0; font-family: Arial, sans-serif; }
.head {
  background-color: #0070c0;
  color: #fff;
  padding: 20px;
  display: flex;
  justify-content: space-between;
  align-items: center;
}

h3 {
  margin: 0;
  font-size: 24px;
  font-weight: bold;
}

form {
  display: flex;
  align-items: center;
}

input[type="text"] {
  padding: 5px;
  margin-right: 10px;
}

button[type="submit"] {
  padding: 5px 10px;
  background-color: #fff;
  border: none;
  color: #0070c0;
  cursor: pointer;
}

button[type="submit"]:hover {
  background-color: #0070c0;
  color: #fff;
}

.insert {
  display: flex;
  justify-content: flex-end;
  margin-top: 20px;
}

.inframe {
  display: none;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  z-index: 999;
  width: 500px;
  background-color: #fff;
  border: 1px solid #ccc;
  box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2);
}

.main {
  margin: 20px;
}

table {
  border-collapse: collapse;
  width: 100%;
}

td,
th {
  padding: 10px;
  text-align: center;
  border: 1px solid #ccc;
}

tr:nth-child(even) {
  background-color: #f2f2f2;
}

a {
  color: #0070c0;
  text-decoration: none;
  margin: 0 5px;
}

a:hover {
  text-decoration: underline;
}
</style>
</head>
<body>
<div class="head">
  <h3>学生信息</h3>
  <form action="query" method="post">
    查询学生姓名：<input type="text" name="q_sname" placeholder="请输入学生姓名">
    <button type="submit">查询</button>
  </form>
  <div class="insert">
    <button id="showFrame">添加学生</button>
    <div class="inframe"> <iframe src="studentInsert.jsp" width="100%" height="500px" frameborder="0"></iframe>
    </div>
  </div>
</div>
<div class="main">
  <table>
    <thead>
    <tr>
      <th>学号</th>
      <th>姓名</th>
      <th>年龄</th>
      <th>操作</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${requestScope.s_students}" var="student">
      <tr>
        <td>${student.id}</td>
        <td>${student.name}</td>
        <td>${student.age}</td>
        <td>
          <a href="delete?sid=${student.id}">删除</a>
          <a href="studentUpdate.jsp?sid=${student.id}&sname=${student.name}&age=${student.age}">更新</a>
          <a href="choose?sid=${student.id}&sname=${student.name}">选课</a>
        </td>
      </tr>
    </c:forEach>
    </tbody>
  </table>
</div>
<script>
  var showFrameBtn = document.getElementById("showFrame");
  var inframeDiv = document.querySelector(".inframe");

  showFrameBtn.addEventListener("click", function() {
    if(inframeDiv.style.display === "block"){
      inframeDiv.style.display = "none";
    }else {
      inframeDiv.style.display = "block";
    }
});
</script> </body> </html>