<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title></title>
    <script src="jsp/js/jquery-3.3.1.js"></script>
    <script src="jsp/js/bootstrap.js"></script>
    <%--<link rel="stylesheet" href="jsp/css/bootstrap.css">--%>
    <%--<link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.css" rel="stylesheet">--%>
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.css" rel="stylesheet">
    <style>
        table {
            border-collapse: collapse;
            table-layout: fixed
        }

        td {
            white-space: nowrap;
            overflow: hidden;
            text-overflow: ellipsis;
        }
    </style>
    <c:choose>
    <c:when test="${failure=='loginFailure'}">
    <script>
        $(function () {
            alert("登录失败，请重新登录")
        });
    </script>
    </c:when>
    <c:when test="${failure=='updateFailure'}">
    <script>
        $(function () {
            alert("密码修改失败，请检查原密码是否正确")
        });
    </script>
    </c:when>
    <c:when test="${failure=='insertFailure'}">
    <script>
        $(function () {
            alert("添加信息异常，请重新添加")
        });
    </script>
    </c:when>
    </c:choose>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <nav class="navbar navbar-default navbar-inverse" role="navigation">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse"
                            data-target="#bs-example-navbar-collapse-1"><span
                            class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span
                            class="icon-bar"></span><span class="icon-bar"></span></button>
                    <a class="navbar-brand" href="#">Brand</a>
                </div>
                <!--导航栏=============================================================================-->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li class="active">
                            <a href="#schedule">新闻信息</a>
                        </li>
                        <li>
                            <a href="#insertSchedule">日程添加</a>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">日程类型<strong
                                    class="caret"></strong></a>
                            <ul class="dropdown-menu">
                                <li>
                                    <a href="#schedule-1">技术部</a>
                                </li>
                                <li>
                                    <a href="#schedule-2">策划部</a>
                                </li>
                                <li>
                                    <a href="#schedule-3">管理部</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                    <%--搜索框部分=======================================--%>
                    <form class="navbar-form navbar-left" role="search" action="/search.do">
                        <div class="form-group">
                            <input type="text" class="form-control" name="searchCondition"/>
                        </div>
                        <button type="submit" class="btn btn-default">Submit</button>
                    </form>
                    <ul class="nav navbar-nav navbar-right">
                        <li>
                            <a href="#toLogin">账号</a>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <c:choose>
                                <c:when test="${user.name!=null}">
                                    ${user.name}
                                <strong class="caret"></strong></a>
                            <ul class="dropdown-menu">
                                <li>
                                    <a href="#">个人信息</a>
                                </li>
                                <li>
                                    <a href="#updatePw">账号修改</a>
                                </li>
                                <li>
                                    <a href="/destory.do">退出账户</a>
                                </li>
                            </ul>
                            </c:when>
                                <%--<c:otherwise><a href="#toLogin" style="top: -29px;">请登录</a></c:otherwise>--%>
                            </c:choose>

                        </li>
                    </ul>
                </div>
            </nav>
            <!--banner======================================================================-->
            <div class="carousel slide" id="carousel-844646">
                <ol class="carousel-indicators">
                    <li class="active" data-slide-to="0" data-target="#carousel-844646">
                    </li>
                    <li data-slide-to="1" data-target="#carousel-844646">
                    </li>
                    <li data-slide-to="2" data-target="#carousel-844646">
                    </li>
                </ol>
                <div class="carousel-inner">
                    <div class="item active">
                        <img alt="" src="jsp/img/default.jpg"/>
                        <div class="carousel-caption">
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
                <a class="left carousel-control" href="#carousel-844646" data-slide="prev"><span
                        class="glyphicon glyphicon-chevron-left"></span></a> <a class="right carousel-control"
                                                                                href="#carousel-844646"
                                                                                data-slide="next"><span
                    class="glyphicon glyphicon-chevron-right"></span></a>
            </div>
        </div>
    </div>
    <!--正文部分=============================================-->
    <br/><br/><br/>
    <div class="row clearfix">
        <div class="col-md-8 column">
            <div class="row clearfix" id="schedule">
                <div class="col-md-8 column">
                    <h3 class="text-left" id="schedule-1">
                        技术部
                    </h3>
                </div>
                <div class="col-md-4 column" style="top: 20px">
                    <%--<a href="/all.do?id=1">--%>
                    <a href="/paging.do?type=1">
                        <button type="button" class="btn btn-xs btn-info btn-block">更多</button>
                    </a>
                </div>
            </div>
            <%--给table加上style="
            border-collapse: collapse;table-layout: fixed"
                给td加上style="white-space: nowrap;
			overflow: hidden;
			text-overflow: ellipsis;"--%>
            <table class="table table-hover table-striped table-condensed">
                <thead>
                <tr>
                    <th style="width: 100px;">具体时间</th>
                    <th style="width: 100px;"> 参会人员</th>
                    <th style="width: 100px;">议题</th>
                    <th style="width: 300px; ">主要内容</th>
                    <th style="
                    width: 100px; ">发布人</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${map.get('a1')}" var="schedule">
                    <c:if test="${schedule.type==1}">
                        <tr>
                            <td>${schedule.scheduletime}</td>
                            <td>${schedule.attendees}</td>
                            <td>${schedule.issue}</td>
                            <td>${schedule.content}</td>
                            <td>${schedule.name}</td>
                        </tr>
                    </c:if>
                </c:forEach>
                </tbody>
            </table>
            <br/><br/><br/>
            <div class="row clearfix">
                <div class="col-md-8 column">
                    <h3 id="schedule-2">
                        策划部
                    </h3>
                </div>
                <div class="col-md-4 column" style="top: 20px">
                    <a href="/paging.do?type=2">
                        <button type="button" class="btn btn-block btn-xs btn-info">按钮</button>
                    </a>
                </div>
            </div>
            <table class="table table-hover table-striped table-condensed">
                <thead>
                <tr>
                    <th style="width: 100px;">具体时间</th>
                    <th style="width: 100px;">参会人员</th>
                    <th style="width: 100px;">议题</th>
                    <th style="width: 300px;">主要内容</th>
                    <th style="
                    width: 100px; ">发布人</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${map.get('a2')}" var="schedule">
                    <c:if test="${schedule.type==2}">
                        <tr>
                            <td>${schedule.scheduletime}</td>
                            <td>${schedule.attendees}</td>
                            <td>${schedule.issue}</td>
                            <td>${schedule.content}</td>
                            <td>${schedule.name}</td>
                        </tr>
                    </c:if>
                </c:forEach>
                </tbody>
            </table>
            <br/><br/><br/>
            <div class="row clearfix">
                <div class="col-md-8 column">
                    <h3 id="schedule-3">
                        管理部
                    </h3>
                </div>
                <div class="col-md-4 column" style="top: 20px">
                    <a href="/paging.do?type=3">
                        <button type="button" class="btn btn-block btn-xs btn-info">按钮</button>
                    </a>
                </div>
            </div>
            <table class="table table-hover table-striped table-condensed">
                <thead>
                <tr>
                    <th style="width: 100px;">具体时间</th>
                    <th style="width: 100px;">参会人员</th>
                    <th style="width: 100px;">议题</th>
                    <th style="width: 300px;">主要内容</th>
                    <th style="
                    width: 100px; ">发布人</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${map.get('a3')}" var="schedule">
                    <c:if test="${schedule.type==3}">
                        <tr>
                            <td>${schedule.scheduletime}</td>
                            <td>${schedule.attendees}</td>
                            <td>${schedule.issue}</td>
                            <td>${schedule.content}</td>
                            <td>${schedule.name}</td>
                        </tr>
                    </c:if>
                </c:forEach>
                </tbody>
            </table>
        </div>

        <div class="col-md-4 column">
            <h3 class="text-warning">
                最新日程表
            </h3>
            <ul>
                <li>
                    Lorem ipsum dolor sit amet
                </li>
                <li>
                    Consectetur adipiscing elit
                </li>
                <li>
                    Integer molestie lorem at massa
                </li>
                <li>
                    Facilisis in pretium nisl aliquet
                </li>
                <li>
                    Nulla volutpat aliquam velit
                </li>
                <li>
                    Faucibus porta lacus fringilla vel
                </li>
                <li>
                    Aenean sit amet erat nunc
                </li>
                <li>
                    Eget porttitor lorem
                </li>
            </ul>
            <%--账号登录===============================================================--%>
            <%--这个地方实现，当登录前，显示有可用来登录的表单，登录之后这个登录的表单就消失了--%>
            <c:choose>
                <c:when test="${user==null}">
                    <h3 id="toLogin">
                        账号登录：
                    </h3>
                    <%--使用post方式提交防止出现地址栏泄露账号密码--%>
                    <form class="form-horizontal" role="form" action="/login.do" method="post">
                        <div class="form-group">
                            <label for="inputEmail3" class="col-sm-2 control-label">账号</label>
                            <div class="col-sm-10">
                                <input class="form-control" id="inputEmail3" name="username" placeholder="请输入账号"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputPassword3" class="col-sm-2 control-label">密码</label>
                            <div class="col-sm-10">
                                <input class="form-control" id="inputPassword3" name="password" placeholder="请输入密码"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-offset-2 col-sm-10">
                                <button type="submit" class="btn btn-default">登录</button>
                            </div>
                        </div>
                    </form>
                </c:when>
                <c:when test="${user!=null}"></c:when>
            </c:choose>
            <%--===========================================================================--%>
            <p>
                <em>Git</em> 是一个分布式的版本控制系统，最初由 <strong>Linus Torvalds</strong>
                编写，用作Linux内核代码的管理。在推出后，Git在其它项目中也取得了很大成功，尤其是在
                <small>Ruby</small>
                社区中。
            </p>
            <dl>
                <dt>
                    Description lists
                </dt>
                <dd>
                    A description list is perfect for defining terms.
                </dd>
                <dt>
                    Euismod
                </dt>
                <dd>
                    Vestibulum id ligula porta felis euismod semper eget lacinia odio sem nec elit.
                </dd>
                <dd>
                    Donec id elit non mi porta gravida at eget metus.
                </dd>
                <dt>
                    Malesuada porta
                </dt>
                <dd>
                    Etiam porta sem malesuada magna mollis euismod.
                </dd>
                <dt>
                    Felis euismod semper eget lacinia
                </dt>
                <dd>
                    Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo
                    sit amet risus.
                </dd>
            </dl>
        </div>
    </div>
    <br/><br/><br/>
    <h3 id="insertSchedule">日程添加：</h3>
    <div class="row clearfix">
        <div class="col-md-8 column">
            <%--日程添加========================================================--%>
            <form role="form" action="/insert.do">
                <div class="form-group">
                    <label>日程类型</label>
                    <select class="form-control" name="type">
                        <option value="1">技术部</option>
                        <option value="2">策划部</option>
                        <option value="3">管理部</option>
                    </select>
                </div>
                <div class="form-group">
                    <label>参会人员</label>
                    <input type="text" class="form-control" name="attendees"/>
                </div>
                <div class="form-group">
                    <label>议题</label>
                    <input type="text" class="form-control" name="issue"/>
                </div>
                <div class="form-group">
                    <label>日程主要内容</label>
                    <input type="text" class="form-control" name="content"/>
                </div>
                <button type="submit" class="btn btn-default">Submit</button>
            </form>
        </div>
        <%--密码修改====================--%>
        <c:if test="${user!=null}">
            <h3 style="left: 50px;position: relative" id="updatePw">密码修改:</h3>
            <br/>
            <div class="col-md-4 column">
                <form class="form-horizontal" role="form" action="/updatePw.do">
                    <div class="form-group">
                        <label for="inputEmail3" class="col-sm-2 control-label" style="width:150px;">原密码</label>
                        <div class="col-sm-10" style="width: 200px;">
                            <input type="password" class="form-control" name="oldPw"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputPassword3" class="col-sm-2 control-label" style="width:150px;">新密码</label>
                        <div class="col-sm-10" style="width: 200px;">
                            <input type="password" class="form-control" name="newPw"/>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <button type="submit" class="btn btn-default">密码修改</button>
                        </div>
                    </div>
                </form>
            </div>
        </c:if>
    </div>
</div>
</body>
</html>
