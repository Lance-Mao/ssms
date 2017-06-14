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
    <title>查看成绩</title>
    <script type="text/javascript" src="/jquery-3.2.1/jquery-3.2.1.js"></script>
    <script src="/layui/layui.js" charset="utf-8"></script>
    <link rel="stylesheet" href="/layui/css/layui.css" media="all">
    <link rel="stylesheet" href="/font-awesome-4.7.0/css/font-awesome.min.css">
</head>
<%
    String name = (String) request.getSession().getAttribute("teaName");
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
                <dd><a href="/jsp/tea/setting.jsp">个人设置</a></dd>
                <dd><a href="/jsp/tea/setPassword.jsp">修改密码</a></dd>

            </dl>
        </li>
        <li class="layui-nav-item"><a href="">登出</a></li>

        <span style="width: 500px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
        <li class="layui-nav-item"><a href=""><i class="fa fa-user fa-4"
                                                 aria-hidden="true"></i>&nbsp;&nbsp;&nbsp;<%=request.getSession().getAttribute("teaName")%>
        </a></li>

        <li class="layui-nav-item">
            <a href="/jsp/tea/index.jsp"><i class="fa fa-user-circle-o"
                                            aria-hidden="true"></i>&nbsp;&nbsp;&nbsp;我的主页</a>
            <dl class="layui-nav-child">
                <dd><a href="/jsp/tea/allCourses.jsp"><i class="fa fa-file-text-o" aria-hidden="true"></i>&nbsp;&nbsp;&nbsp;查看成绩</a>
                </dd>
                <dd><a href="/jsp/tea/user.jsp"><i class="fa fa-id-card-o" aria-hidden="true"></i>&nbsp;&nbsp;&nbsp;个人中心</a>
                </dd>
                <dd><a href="/jsp/tea/subject.jsp"><i class="fa fa-newspaper-o" aria-hidden="true"></i>&nbsp;&nbsp;&nbsp;课程信息</a>
                </dd>
            </dl>
        </li>
    </ul>
</div>
<div style="float: left; margin-right: 20px">
    <div style="width: 198px;height: 180px;border: 1px solid #eeeeee;">

        <div style="width: 200px;height: 110px" align="center"><img src="/img/user.jpg"></div>
        <a href="/jsp/tea/user.jsp">
            <div align="center"><%=request.getSession().getAttribute("teaName")%>
            </div>
        </a>
        <div align="center"><%=request.getSession().getAttribute("teaType")%>
        </div>
    </div>


    <ul class="layui-nav layui-nav-tree" lay-filter="demo">
        <li class="layui-nav-item layui-nav-itemed">
            <a href="javascript:; " style="background-color: #aaaaaa;"><i class="fa fa-clipboard"
                                                                          aria-hidden="true"></i>&nbsp;&nbsp;&nbsp;教学管理</a>
            <dl class="layui-nav-child" style="background-color: #aaaaaa;">
                <dd><a href="/jsp/tea/index.jsp" style="color: #0C0C0C"><i class="fa fa-university"
                                                                           aria-hidden="true"></i>&nbsp;&nbsp;&nbsp;首页</a>
                </dd>
                <dd><a href="/jsp/tea/examination_Statistics.jsp" style="color: #0C0C0C"><i class="fa fa-file-text"
                                                                                            aria-hidden="true"></i>&nbsp;&nbsp;&nbsp;发布公告</a>
                </dd>
                <dd><a href="/jsp/tea/score_registration.jsp" style="color: #0C0C0C"><i class="fa fa-file-text"
                                                                                        aria-hidden="true"></i>&nbsp;&nbsp;&nbsp;成绩登记</a>
                </dd>
            </dl>
        </li>


        <li class="layui-nav-item"><a href="">社区</a></li>
    </ul>
</div>

<div style="float: left;width: 729px;height: auto">
    <div style="float: left; margin-bottom: 10px; border: 1px solid #C2BE9E; width: 725px;height: 35px;"><p
            style="font-size: 15px;"><i class="fa fa-bell" aria-hidden="true"></i>发布通知</p></div>

    <div class="layui-form-item layui-form-text">
        <div class="layui-input-block">
            <textarea class="layui-textarea layui-hide" name="p_content" lay-verify="content"
                      id="LAY_demo_editor"></textarea>
        </div>
    </div>
    <div class="layui-form-item">
        <div class="layui-input-block">
            <button class="layui-btn" lay-submit="" lay-filter="demo1" id="gonggao">立即提交</button>
            <button type="reset" class="layui-btn layui-btn-primary">重置</button>
        </div>
    </div>
</div>


<div style="float: left;width: 378px;height: 570px;margin-left: 20px;border: 1px solid #C2BE9E;">
    <div style="margin: 0px">
        <p style="font-size: 30px; color: #23262E"><i class="fa fa-commenting" aria-hidden="true"></i>&nbsp;&nbsp;&nbsp;留言板
        </p>
    </div>
    <div style="width: 360px; height: 250px;background-color: #01AAED"></div>
    <div style="width: 360px; height: 250px;background-color: springgreen"></div>
</div>

<script>
    $(function () {

        $("#gonggao").click(function () {
            var content = $("textarea[name='p_content']").val();
            alert($("#LAY_demo_editor").val());
            $.post("${pageContext.request.contextPath}/TeaServlet?method=publish_info", {
                    textarea: content
                },
                function (data, status) {

                }
            )
        })
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

<script>
    layui.use(['form', 'layedit', 'laydate'], function () {
        var form = layui.form()
            , layer = layui.layer
            , layedit = layui.layedit
            , laydate = layui.laydate;

        //创建一个编辑器
        var editIndex = layedit.build('LAY_demo_editor');

        //自定义验证规则
        form.verify({
            title: function (value) {
                if (value.length < 5) {
                    return '标题至少得5个字符啊';
                }
            }
            , pass: [/(.+){6,12}$/, '密码必须6到12位']
            , content: function (value) {
                layedit.sync(editIndex);
            }
        });

        //监听指定开关
        form.on('switch(switchTest)', function (data) {
            layer.msg('开关checked：' + (this.checked ? 'true' : 'false'), {
                offset: '6px'
            });
            layer.tips('温馨提示：请注意开关状态的文字可以随意定义，而不仅仅是ON|OFF', data.othis)
        });

        //监听提交
        form.on('submit(demo1)', function (data) {
            layer.alert(JSON.stringify(data.field), {
                title: '最终的提交信息'
            })
            return false;
        });

    });
</script>
</body>
</html>
