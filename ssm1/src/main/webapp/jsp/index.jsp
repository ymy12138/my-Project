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
        <div class="col-md-12 column" style="top: 10px">
            <nav class="navbar navbar-default" role="navigation">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse"
                            data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">Brand</a>
                </div>
                <!--导航栏-->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <!--导航栏第一个标签-->
                        <li class="active">
                            <a href="#">Link</a>
                        </li>
                        <!--导航栏第二个标签-->
                        <li>
                            <a href="#">Link</a>
                        </li>
                        <!--导航栏下拉菜单-->
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown<strong
                                    class="caret"></strong></a>
                            <ul class="dropdown-menu">
                                <li>
                                    <a href="#">Action</a>
                                </li>
                                <li>
                                    <a href="#">Another action</a>
                                </li>
                                <li>
                                    <a href="#">Something else here</a>
                                </li>
                                <li class="divider">
                                </li>
                                <li>
                                    <a href="#">Separated link</a>
                                </li>
                                <li class="divider">
                                </li>
                                <li>
                                    <a href="#">One more separated link</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                    <!--搜索框-->
                    <form class="navbar-form navbar-left" role="search">
                        <div class="form-group">
                            <input type="text" class="form-control"/>
                        </div>
                        <button type="submit" class="btn btn-default">Submit</button>
                    </form>
                    <div class="btn-group" style="top: 8px">
                        <button class="btn btn-default">${user.name}</button>
                        <button data-toggle="dropdown" class="btn btn-default dropdown-toggle" style="height: 34px;">
                            <span class="caret"></span></button>
                        <ul class="dropdown-menu">
                            <li><a href="#">个人资料</a></li>
                            <li><a href="/changeAccountjsp.do">账号修改</a></li>
                            <li class="divider"></li>
                            <li><a href="#">其它</a></li>
                        </ul>
                    </div>
                </div>

            </nav>

        </div>
        <!--按钮，下拉显示-->
    </div>
    <!--banner-->
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="carousel slide" id="carousel-854090">
                <ol class="carousel-indicators">
                    <li class="active" data-slide-to="0" data-target="#carousel-854090">
                    </li>
                    <li data-slide-to="1" data-target="#carousel-854090">
                    </li>
                    <li data-slide-to="2" data-target="#carousel-854090">
                    </li>
                </ol>
                <div class="carousel-inner">
                    <div class="item active">
                        <img alt="" src="jsp/img/default.jpg"/>
                        <div class="carousel-caption">
                            <!--图片上显示的文字-->
                            <h4>
                                First Thumbnail label
                            </h4>
                            <p>
                                Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta
                                gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
                            </p>
                        </div>
                    </div>
                    <div class="item">
                        <img alt="" src="jsp/img/default1.jpg"/>
                        <div class="carousel-caption">
                            <h4>
                                Second Thumbnail label
                            </h4>
                            <p>
                                Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta
                                gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
                            </p>
                        </div>
                    </div>
                    <div class="item">
                        <img alt="" src="jsp/img/default2.jpg"/>
                        <div class="carousel-caption">
                            <h4>
                                Third Thumbnail label
                            </h4>
                            <p>
                                Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta
                                gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
                            </p>
                        </div>
                    </div>
                </div>
                <a class="left carousel-control" href="#carousel-854090" data-slide="prev"><span
                        class="glyphicon glyphicon-chevron-left"></span></a> <a class="right carousel-control"
                                                                                href="#carousel-854090"
                                                                                data-slide="next"><span
                    class="glyphicon glyphicon-chevron-right"></span></a>
            </div>
        </div>
    </div>
    <div class="row clearfix">
        <div class="col-md-8 column">
            <h3>策划部</h3>
            <table class="table">
                <thead>
                <tr>
                    <th>具体时间</th>
                    <th>参会人员</th>
                    <th>议题</th>
                    <th>主要内容</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${list}" var="schedule">
                    <c:if test="${schedule.type==1}">
                        <tr>
                            <td>${schedule.scheduletime}</td>
                            <td>${schedule.attendees}</td>
                            <td>${schedule.issue}</td>
                            <td>${schedule.content}</td>
                        </tr>
                    </c:if>
                </c:forEach>
                <%--<td>--%>
                <%--TB - Monthly--%>
                <%--</td>--%>
                <%--<td>--%>
                <%--01/04/2012--%>
                <%--</td>--%>
                <%--<td>--%>
                <%--Default--%>
                <%--</td>--%>
                <%--<td>--%>
                <%--Default--%>
                <%--</td>--%>
                </tbody>
            </table>
            <h3>技术部</h3>
            <table class="table">
                <thead>
                <tr>
                    <th>具体时间</th>
                    <th>参会人员</th>
                    <th>议题</th>
                    <th>主要内容</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${list}" var="schedule">
                    <c:if test="${schedule.type==2}">
                        <tr>
                            <td>${schedule.scheduletime}</td>
                            <td>${schedule.attendees}</td>
                            <td>${schedule.issue}</td>
                            <td>${schedule.content}</td>
                        </tr>
                    </c:if>
                </c:forEach>
                </tbody>
            </table>
            <h3>设计部
            </h3>
            <table class="table">
                <thead>
                <tr>
                    <th>具体时间</th>
                    <th>参会人员</th>
                    <th>议题</th>
                    <th>主要内容</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${list}" var="schedule">
                    <c:if test="${schedule.type==3}">
                        <tr>
                            <td>${schedule.scheduletime}</td>
                            <td>${schedule.attendees}</td>
                            <td>${schedule.issue}</td>
                            <td>${schedule.content}</td>
                        </tr>
                    </c:if>
                </c:forEach>
                </tbody>
            </table>
        </div>
        <div class="col-md-4 column">
            <blockquote>
                <p>
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.
                </p>
                <small>Someone famous <cite>Source Title</cite></small>
            </blockquote>
        </div>
    </div>
</div>
</body>
</html>
