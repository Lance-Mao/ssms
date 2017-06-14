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
        <li class="layui-nav-item"><a href="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class="fa fa-bell-o"
                                                                                           aria-hidden="true"></i>&nbsp;&nbsp;&nbsp;最新通知</a>
        </li>
        <li class="layui-nav-item layui-this">
            <a href="javascript:;"><i class="fa fa-cog" aria-hidden="true"></i>&nbsp;&nbsp;&nbsp;相关设置</a>
            <dl class="layui-nav-child">
                <dd><a href="/jsp/stu/settings.jsp">个人设置</a></dd>
                <dd><a href="/jsp/stu/setPassword.jsp">修改密码</a></dd>

            </dl>
        </li>
        <li class="layui-nav-item"><a href="">登出</a></li>

        <span style="width: 500px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
        <li class="layui-nav-item layui-this">
            <a href=""><i class="fa fa-user fa-4"
                          aria-hidden="true"></i>&nbsp;&nbsp;&nbsp;<%=request.getSession().getAttribute("stuName")%>
            </a>
            <dl class="layui-nav-child">
                <dd><a href="/jsp/stu/settings.jsp">信息设置</a></dd>
                <dd><a href="/jsp/stu/setPassword.jsp">修改密码</a></dd>

            </dl>
        </li>
        <li class="layui-nav-item">
            <a href="/jsp/stu/index.jsp"><i class="fa fa-user-circle-o"
                                            aria-hidden="true"></i>&nbsp;&nbsp;&nbsp;我的主页</a>
            <dl class="layui-nav-child">
                <dd><a href="/jsp/stu/courses.jsp"><i class="fa fa-file-text-o" aria-hidden="true"></i>&nbsp;&nbsp;&nbsp;查看成绩</a>
                </dd>
                <dd><a href="/jsp/stu/user.jsp"><i class="fa fa-id-card-o" aria-hidden="true"></i>&nbsp;&nbsp;&nbsp;个人中心</a>
                </dd>
                <dd><a href="/jsp/stu/subject.jsp"><i class="fa fa-newspaper-o" aria-hidden="true"></i>&nbsp;&nbsp;&nbsp;课程信息</a>
                </dd>
            </dl>
        </li>
    </ul>
</div>
<div style="float: left; margin-right: 20px">
    <div style="width: 198px;height: 180px;border: 1px solid #eeeeee;">

        <div style="width: 200px;height: 110px" align="center"><img src="/img/user.jpg"></div>
        <div align="center"><a href="/jsp/stu/user.jsp"><%=request.getSession().getAttribute("stuName")%>
        </a></div>
        <div align="center"><%=request.getSession().getAttribute("stuType")%>
        </div>
    </div>


    <ul class="layui-nav layui-nav-tree" lay-filter="demo">
        <li class="layui-nav-item layui-nav-itemed">
            <a href="javascript:; " style="background-color: #aaaaaa;"><i class="fa fa-clipboard"
                                                                          aria-hidden="true"></i>&nbsp;&nbsp;&nbsp;我的学习</a>
            <dl class="layui-nav-child" style="background-color: #aaaaaa;">
                <dd><a href="/jsp/stu/index.jsp" style="color: #0C0C0C"><i class="fa fa-university"
                                                                           aria-hidden="true"></i>&nbsp;&nbsp;&nbsp;首页</a>
                </dd>
                <dd><a href="/jsp/stu/subject.jsp" style="color: #0C0C0C"><i class="fa fa-file-text"
                                                                             aria-hidden="true"></i>&nbsp;&nbsp;&nbsp;我的课程表</a>
                </dd>
                <dd><a href="/jsp/stu/courses.jsp" style="color: #0C0C0C"><i class="fa fa-file-text"
                                                                             aria-hidden="true"></i>&nbsp;&nbsp;&nbsp;我的成绩单</a>
                </dd>

                <dd><a href="/jsp/stu/leave_word.jsp" style="color: #0C0C0C"><i class="fa fa-file-text"
                                                                             aria-hidden="true"></i>&nbsp;&nbsp;&nbsp;给老师留言</a>
                </dd>
            </dl>
        </li>

        <li class="layui-nav-item"><a href="">社区</a></li>
    </ul>
</div>



<div style="float: left;width: 729px;height: auto">

        <fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
            <legend>给老师留言</legend>
        </fieldset>

        <form class="layui-form" action="${pageContext.request.contextPath}/StuServlet?method=leave_word" method="post">
            <div class="layui-form-item">
                <div class="layui-inline">
                    <label class="layui-form-label" style="width: auto">输入老师姓名</label>
                    <div class="layui-input-inline">
                        <input name="tea_name"  autocomplete="off" class="layui-input" type="tel">
                    </div>
                </div>
            </div>


            <div class="layui-form-item layui-form-text">
                <label class="layui-form-label">编辑器</label>
                <div class="layui-input-block">
                    <textarea class="layui-textarea layui-hide" name="content" lay-verify="content" id="LAY_demo_editor"></textarea>
                </div>
            </div>
            <div class="layui-form-item">
                <div class="layui-input-block">
                    <button class="layui-btn" lay-submit="" >立即提交</button>
                    <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                </div>
            </div>
        </form>
    <div style="float: left">
        <fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
            <legend>留言记录</legend>
        </fieldset>

        <div class="layui-form">
            <table class="layui-table">
                <colgroup>
                    <col width="50">
                    <col width="700">
                </colgroup>
                <thead id="msg">
                <tr>
                    <th><input name="" lay-skin="primary" lay-filter="allChoose" type="checkbox"></th>

                    <th>留言内容</th>
                </tr>
                </thead>
                <tbody id="showRelationship">


                </tbody>
            </table>
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
        $.post("${pageContext.request.contextPath}/StuServlet?method=showLeave_word",
            function (data,status) {
                $("#showRelationship").html();
                for(var i in data) {
                    $("#showRelationship").append(
                        "<tr>"+
                        "                    <td><input name='' lay-skin='primary' type='checkbox'></td>"+
                        "                    <td>"+data[i]['stu_msg']+"</td>"+
                        "                </tr>"+
                        ""
                    )
                }
            },
        "json")
    })
</script>


<script>
    $(document).ready(function () {
        $.post("${pageContext.request.contextPath}/StuServlet?method=showPublish_info",
            function (data, status) {
                $("#showPublish_info").html("");
                for (var i = data.length - 1; i > -1; i--) {
                    $("#showPublish_info").append("" +
                        " <fieldset class='layui-elem-field layui-field-title' style='margin-top: 5px;'> " +
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
                        "                <td>" + data[i]['tea_name'] + "</td>" +
                        "                <td>" + data[i]['tea_msg'] + "</td>" +
                        "                <td>" + data[i]['date'] + "</td>" +
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
    layui.use(['form', 'layedit', 'laydate'], function(){
        var form = layui.form()
            ,layer = layui.layer
            ,layedit = layui.layedit
            ,laydate = layui.laydate;

        //创建一个编辑器
        var editIndex = layedit.build('LAY_demo_editor');

        //自定义验证规则
        form.verify({
            title: function(value){
                if(value.length < 5){
                    return '标题至少得5个字符啊';
                }
            }
            ,pass: [/(.+){6,12}$/, '密码必须6到12位']
            ,content: function(value){
                layedit.sync(editIndex);
            }
        });

        //监听指定开关
        form.on('switch(switchTest)', function(data){
            layer.msg('开关checked：'+ (this.checked ? 'true' : 'false'), {
                offset: '6px'
            });
            layer.tips('温馨提示：请注意开关状态的文字可以随意定义，而不仅仅是ON|OFF', data.othis)
        });

        //监听提交
        form.on('submit(demo1)', function(data){
            layer.alert(JSON.stringify(data.field), {
                title: '最终的提交信息'
            })
            return false;
        });


    });
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
