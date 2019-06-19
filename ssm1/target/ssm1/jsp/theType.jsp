<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
    <script src="jsp/js/jquery-3.3.1.js"></script>
    <script src="jsp/js/bootstrap.js"></script>
    <%--<link rel="stylesheet" href="jsp/css/bootstrap.css">--%>
    <%--<link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.css" rel="stylesheet">--%>
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-2 column">
        </div>
        <div class="col-md-8 column">
            <h3>
                日程信息
            </h3>
            <table class="table table-hover table-striped table-condensed">
                <thead>
                <tr>
                    <th style="width: 100px;">具体时间</th>
                    <th style="width: 100px;">参会人员</th>
                    <th style="width: 100px;">议题</th>
                    <th style="width: 300px;">主要内容</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${theTypeList}" var="schedule">
                    <tr>
                        <td>${schedule.scheduletime}</td>
                        <td>${schedule.attendees}</td>
                        <td>${schedule.issue}</td>
                        <td>${schedule.content}</td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
            <ul class="pagination">
                <li>
                    <a href="#">Prev</a>
                </li>
                <li>
                    <a href="#" class="active">1</a>
                </li>
                <li>
                    <a href="#">2</a>
                </li>
                <li>
                    <a href="#">3</a>
                </li>
                <li>
                    <a href="#">4</a>
                </li>
                <li>
                    <a href="#">5</a>
                </li>
                <li>
                    <a href="#">Next</a>
                </li>
            </ul>
        </div>
        <div class="col-md-2 column">
        </div>
    </div>
</div>
</body>
</html>
