<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="js/jquery-3.3.1.js"></script>
    <script src="js/bootstrap.js"></script>
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.css" rel="stylesheet">

    <style>
        * {
            padding: 0;
            margin: 0;

        }

        body {
            text-align: center;
        }

        .biaoqianye {
            width: 300px;
            height: 200px;
            position: absolute;
            left: 50%;
            top: 30%;
            margin-left: -150px;
            margin-top: -100px;
        }

    </style>
</head>
<body>
<div class="biaoqianye">
    <ul class="nav nav-tabs" role="tablist">
        <li class="active"><a href="#login" role="tab" data-toggle="tab">登陆</a></li>
        <li><a href="#register" role="tab" data-toggle="tab">注册</a></li>
    </ul>


    <div class="tab-content">
        <div class="tab-pane active" id="login">
            <form action="/login.do" method="post">
                <div class="form-group form-inline">
                    <br/>
                    <br/>
                    <label>账号：</label>
                    <input type="text" class="form-control" placeholder="请输入账号" name="username"/><br/>
                    <br/>
                    <label>密码：</label>
                    <input type="text" class="form-control" placeholder="请输入密码" name="password"/><br/>
                    <br/>
                    <button class="btn btn-default" name="login">登陆</button>

                    <button class="btn btn-default" name="cancel">取消</button>
                </div>
            </form>
        </div>
        <div class="tab-pane" id="register">
            <%--<form action="register-response.jsp" method="post">--%>
                <%--<div class="form-group form-inline">--%>
                    <%--<br/>--%>
                    <%--<br/>--%>
                    <%--<label for="">账号：</label>--%>
                    <%--<input type="text" class="form-control" placeholder="请输入账号"/><br/>--%>
                    <%--<br/>--%>
                    <%--<label for="">密码：</label>--%>
                    <%--<input type="text" class="form-control" placeholder="请输入密码"/><br/>--%>
                    <%--<br/>--%>
                    <%--<button class="btn btn-default" name="registerlogin">注册</button>--%>

                    <%--<button class="btn btn-default" name="registercancel">取消</button>--%>
                <%--</div>--%>
            <%--</form>--%>
            待续。。。。。。
        </div>
    </div>
</div>
</body>
</html>
