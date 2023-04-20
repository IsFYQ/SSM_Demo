<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>首页</title>
    <style>
        body {
            margin: 0;
            padding: 0;
        }
        .head {
            height: 60px;
            background-color: #333;
            color: #fff;
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 0 20px;
        }
        .main {
            display: flex;
            height: calc(100vh - 60px);
        }
        .left {
            width: 20%;
            background-color: #f2f2f2;
            padding: 20px;
            box-sizing: border-box;
            overflow: hidden;
        }
        .choose {
            margin-bottom: 10px;
            cursor: pointer;
            padding: 10px;
            background-color: #fff;
            border: 1px solid #ccc;
        }
        .choose:hover {
            background-color: #f2f2f2;
        }
        .chiframe {
            display: none;
            left: 20%;
            top: 60px;
            position: absolute;
            margin-top: 10px;
        }
        iframe {
            border: none;
            height: calc(100vh - 120px);
        }
        .active .chiframe {
            display: block;
        }
    </style>
</head>
<body>
<div class="head">
    <h2>学生选课系统</h2>
    <div>欢迎你：${requestScope.lname}</div>
</div>
<div class="main">
    <div class="left">
        <div class="choose" onclick="toggleIframe(this)">选课详情
            <div class="chiframe">
                <iframe src="choose/choose" width="800px" scrolling="no"></iframe>
            </div>
        </div>
        <div class="choose" onclick="toggleIframe(this)">查看课程
            <div class="chiframe">
                <iframe src="course/course" width="800px" scrolling="no"></iframe>
            </div>
        </div>
        <div class="choose" onclick="toggleIframe(this)">查看学生
            <div class="chiframe">
                <iframe src="student/student" width="800px" scrolling="no"></iframe>
            </div>
        </div>
    </div>
    <div class="right"></div>
</div>
<script>
    function toggleIframe(element) {
        var activeElement = document.querySelector('.active');
        if (activeElement) {
            activeElement.classList.remove('active');
        }
        if (activeElement !== element) {
            element.classList.add('active');
        }
    }
</script>
</body>
</html>