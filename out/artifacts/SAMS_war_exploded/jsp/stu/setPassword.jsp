<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2017/6/5
  Time: 16:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isELIgnored="false" %>
<html>
<head>
    <title>TronClass</title>
    <script type="text/javascript" src="/jquery-3.2.1/jquery-3.2.1.js"></script>
    <script src="/layui/layui.js" charset="utf-8"></script>
    <link rel="stylesheet" href="/layui/css/layui.css" media="all">
    <link rel="stylesheet" href="/font-awesome-4.7.0/css/font-awesome.min.css">
</head>
<%
    String name = (String) request.getSession().getAttribute("stuName");
    if (name == null) {
        response.sendRedirect("/jsp/login/login.jsp");
    }
%>
<body>
<div style="margin-bottom: 20px">
    <ul class="layui-nav">
        <li class="layui-nav-item"><a href="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class="fa fa-bell-o" aria-hidden="true"></i>&nbsp;&nbsp;&nbsp;最新通知</a></li>
        <li class="layui-nav-item layui-this">
            <a href="javascript:;" ><i class="fa fa-cog" aria-hidden="true"></i>&nbsp;&nbsp;&nbsp;相关设置</a>
            <dl class="layui-nav-child">
                <dd><a href="/jsp/stu/settings.jsp">个人设置</a></dd>
                <dd><a href="/jsp/stu/setPassword.jsp">修改密码</a></dd>

            </dl>
        </li>
        <li class="layui-nav-item"><a href="">登出</a></li>

        <span style="width: 500px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
        <li class="layui-nav-item layui-this">
            <a href=""><i class="fa fa-user fa-4" aria-hidden="true"></i>&nbsp;&nbsp;&nbsp;<%=request.getSession().getAttribute("stuName")%></a>
            <dl class="layui-nav-child">
                <dd><a href="/jsp/stu/settings.jsp">信息设置</a></dd>
                <dd><a href="/jsp/stu/setPassword.jsp">修改密码</a></dd>

            </dl>
        </li>
        <li class="layui-nav-item">
            <a href="/jsp/stu/index.jsp"><i class="fa fa-user-circle-o" aria-hidden="true"></i>&nbsp;&nbsp;&nbsp;我的主页</a>
            <dl class="layui-nav-child">
                <dd><a href="/jsp/stu/courses.jsp"><i class="fa fa-file-text-o" aria-hidden="true"></i>&nbsp;&nbsp;&nbsp;查看成绩</a></dd>
                <dd><a href="/jsp/stu/user.jsp"><i class="fa fa-id-card-o" aria-hidden="true"></i>&nbsp;&nbsp;&nbsp;个人中心</a></dd>
                <dd><a href="/jsp/stu/subject.jsp"><i class="fa fa-newspaper-o" aria-hidden="true"></i>&nbsp;&nbsp;&nbsp;课程信息</a></dd>
            </dl>
        </li>
    </ul>
</div>
<div style="float: left; margin-right: 20px">
    <div style="width: 198px;height: 180px;border: 1px solid #eeeeee;" >

        <div style="width: 200px;height: 110px" align="center" ><img src="/img/user.jpg"></div>
        <div align="center"><a href="/jsp/stu/user.jsp"><%=request.getSession().getAttribute("stuName")%></a></div>
        <div align="center"><%=request.getSession().getAttribute("stuType")%></div>
    </div>


    <ul class="layui-nav layui-nav-tree" lay-filter="demo">
        <li class="layui-nav-item layui-nav-itemed">
            <a href="javascript:; " style="background-color: #aaaaaa;"><i class="fa fa-clipboard" aria-hidden="true"></i>&nbsp;&nbsp;&nbsp;我的学习</a>
            <dl class="layui-nav-child"  style="background-color: #aaaaaa;">
                <dd><a href="/jsp/stu/index.jsp" style="color: #0C0C0C"><i class="fa fa-university" aria-hidden="true"></i>&nbsp;&nbsp;&nbsp;首页</a></dd>
                <dd><a href="/jsp/stu/subject.jsp" style="color: #0C0C0C"><i class="fa fa-file-text" aria-hidden="true"></i>&nbsp;&nbsp;&nbsp;我的课程表</a></dd>
                <dd><a href="/jsp/stu/courses.jsp" style="color: #0C0C0C"><i class="fa fa-file-text" aria-hidden="true"></i>&nbsp;&nbsp;&nbsp;我的成绩单</a></dd>
            </dl>
        </li>

        <li class="layui-nav-item"><a href="">社区</a></li>
    </ul>
</div>

<div style="float: left;width: 729px;height: auto">
    <div style="float: left; margin-bottom: 10px; border: 1px solid #C2BE9E; width: 725px;height: 35px;"><p style="font-size: 15px;">   <i class="fa fa-bell" aria-hidden="true"></i>相关动态</p></div>
    <div style="float: left; margin-top: 10px;margin-bottom: 10px; border: 1px solid #C2BE9E; width: 725px;height: 100px;"><p style="font-size: 22px;"><i class="fa fa-commenting" aria-hidden="true"></i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;成绩信息<div style="margin-left: 55px">时间</div></p>
        <div style="margin-top: 20px">
            <p>你在课程数学考试中得了70分！</p>
        </div>
    </div>
    <div style="float: left; margin-top: 10px;margin-bottom: 10px; border: 1px solid #C2BE9E; width: 725px;height: 100px;"><p style="font-size: 22px;"><i class="fa fa-commenting" aria-hidden="true"></i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;成绩信息<div style="margin-left: 55px">时间</div></p>
        <div style="margin-top: 20px">
            <p>你在课程数学考试中得了70分！</p>
        </div>
    </div>
    <div style="float: left; margin-top: 10px;margin-bottom: 10px; border: 1px solid #C2BE9E; width: 725px;height: 100px;"><p style="font-size: 22px;"><i class="fa fa-commenting" aria-hidden="true"></i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;成绩信息<div style="margin-left: 55px">时间</div></p>
        <div style="margin-top: 20px">
            <p>你在课程数学考试中得了70分！</p>
        </div>
    </div>

</div>
<div style="float: left;width: 378px;height: auto;margin-left: 20px;border: 1px solid #C2BE9E;">

    <div style="width: 360px; height: auto" id="showPublish_info">

    </div>
    <div style="margin: 0px">
        <p style="font-size: 22px; color: #23262E"><i class="fa fa-commenting" aria-hidden="true"></i>&nbsp;&nbsp;&nbsp;留言记录
        </p>
    </div>
    <div style="width: 360px; height: auto;">

    </div>
</div>
<script>
    $(document).ready(function () {
        $.post("${pageContext.request.contextPath}/StuServlet?method=showPublish_info",
            function (data, status) {
                $("#showPublish_info").html("");
                for (var i = data.length-1; i > -1 ; i--) {
                    $("#showPublish_info").append("" +
                        " <fieldset class='layui-elem-field layui-field-title' style='margin-top: 5px;'> "+
                        "            <legend><i class='fa fa-commenting' aria-hidden='true'></i>&nbsp;&nbsp;&nbsp;教学通知</legend>" +
                        "        </fieldset>" +
                        "        <table class='layui-table' lay-skin='line'>" +
                        "            <colgroup>" +
                        "                <col width='180'>" +
                        "                <col width='300'>" +
                        "                <col width='200'>" +
                        "                <col>" +
                        "            </colgroup>" +
                        "            <thead>" +
                        "            <tr>" +
                        "                <th>老师</th>" +
                        "                <th>留言内容</th>" +
                        "                <th>发布时间</th>" +
                        "            </tr>" +
                        "            </thead>" +
                        "            <tbody>" +
                        "            <tr>" +
                        "                <td>"+data[i]['tea_name']+"</td>" +
                        "                <td>"+data[i]['tea_msg']+"</td>" +
                        "                <td>"+data[i]['date']+"</td>" +
                        "            </tr>" +
                        "            </tbody>" +
                        "        </table>"
                    );
                }
            },
            "json"
        );
    })
</script>
<script>
    layui.use('element', function () {
        var element = layui.element(); //导航的hover效果、二级菜单等功能，需要依赖element模块

        //监听导航点击
        element.on('nav(demo)', function (elem) {
            //console.log(elem)
            layer.msg(elem.text());
        });
    });
</script>
</body>
</html>
