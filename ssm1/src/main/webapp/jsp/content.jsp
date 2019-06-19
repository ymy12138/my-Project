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
                    <th style="width: 100px;">操作</th>

                </tr>
                </thead>
                <tbody>
                <c:forEach items="${page.currentList}" var="schedule">
                    <tr>
                        <td>${schedule.scheduletime}</td>
                        <td>${schedule.attendees}</td>
                        <td>${schedule.issue}</td>
                        <td>${schedule.content}</td>
                        <td><a href="/deleteSchedule.do?id=${schedule.id}&type=${page.type}">删除</a></td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
            <ul class="pagination">
                <c:if test="${page.currentPage!=0}">
                <li>
                    <a href="/paging.do?currentPage=0&type=${page.type}">首页</a>
                </li>
                    <%--多个参数传入的时候使用&做连接--%>
                <li>
                    <a href="/paging.do?currentPage=${page.currentPage-1}&type=${page.type}">上一页</a>
                </li>
                </c:if>
                <%--<li>--%>
                    <%--<a href="#">${page.currentPage}</a>--%>
                <%--</li>--%>
                <c:if test="${(page.currentPage)<(page.totalPage-1)}">
                    <li>
                        <a href="#">${page.currentPage+2}</a>
                    </li>
                </c:if>

                <c:if test="${(page.currentPage+1)<(page.totalPage-1)}">
                    <li>
                        <a href="#">${page.currentPage+3}</a>
                    </li>
                </c:if>
                <c:if test="${(page.currentPage+2)<(page.totalPage-1)}">
                    <li>
                        <a href="#">${page.currentPage+4}</a>
                    </li>
                </c:if>
                <c:if test="${(page.currentPage+3)<(page.totalPage-1)}">
                    <li>
                        <a href="#">${page.currentPage+5}</a>
                    </li>
                </c:if>
                <%--分页之后再优化一下--%>
                <c:if test="${page.currentPage!=page.totalPage-1}">
                <li>
                    <a href="/paging.do?currentPage=${page.currentPage+1}&type=${page.type}">下一页</a>
                </li>
                <li>
                    <a href="/paging.do?currentPage=${page.totalPage-1}&type=${page.type}">尾页</a>
                </li>
                </c:if>
            </ul>
        </div>
        <div class="col-md-2 column">
        </div>
    </div>
</div>
</body>
</html>
