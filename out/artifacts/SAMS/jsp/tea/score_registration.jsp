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
    <script type="text/javascript" src="${pageContext.request.contextPath}/jquery-3.2.1/jquery-3.2.1.js"></script>
    <script src="${pageContext.request.contextPath}/layui/layui.js" charset="utf-8"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css" media="all">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/font-awesome-4.7.0/css/font-awesome.min.css">
</head>
<%
    String name = (String) request.getSession().getAttribute("teaName");
    if (name == null) {
        response.sendRedirect(request.getContextPath()+"/jsp/login/login.jsp");
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
                <dd><a href="${pageContext.request.contextPath}/jsp/tea/setting.jsp">个人设置</a></dd>
                <dd><a href="${pageContext.request.contextPath}/jsp/tea/setPassword.jsp">修改密码</a></dd>

            </dl>
        </li>
        <li class="layui-nav-item"><a href="${pageContext.request.contextPath}/jsp/login/login.jsp">登出</a></li>

        <span style="width: 500px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
        <li class="layui-nav-item"><a href=""><i class="fa fa-user fa-4"
                                                 aria-hidden="true"></i>&nbsp;&nbsp;&nbsp;<%=request.getSession().getAttribute("teaName")%>
        </a></li>

        <li class="layui-nav-item">
            <a href="${pageContext.request.contextPath}/jsp/tea/index.jsp"><i class="fa fa-user-circle-o"
                                            aria-hidden="true"></i>&nbsp;&nbsp;&nbsp;我的主页</a>
            <dl class="layui-nav-child">
                <dd><a href="${pageContext.request.contextPath}/jsp/tea/allCourses.jsp"><i class="fa fa-file-text-o" aria-hidden="true"></i>&nbsp;&nbsp;&nbsp;查看成绩</a>
                </dd>
                <dd><a href="${pageContext.request.contextPath}/jsp/tea/user.jsp"><i class="fa fa-id-card-o" aria-hidden="true"></i>&nbsp;&nbsp;&nbsp;个人中心</a>
                </dd>
                <dd><a href="${pageContext.request.contextPath}/jsp/tea/subject.jsp"><i class="fa fa-newspaper-o" aria-hidden="true"></i>&nbsp;&nbsp;&nbsp;课程信息</a>
                </dd>
            </dl>
        </li>
    </ul>
</div>
<div style="float: left; margin-right: 20px">
    <div style="width: 198px;height: 180px;border: 1px solid #eeeeee;">

        <div style="width: 200px;height: 110px" align="center"><img src="${pageContext.request.contextPath}/img/user.jpg"></div>
        <a href="${pageContext.request.contextPath}/jsp/tea/user.jsp">
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
                <dd><a href="${pageContext.request.contextPath}/jsp/tea/index.jsp" style="color: #0C0C0C"><i class="fa fa-university"
                                                                           aria-hidden="true"></i>&nbsp;&nbsp;&nbsp;首页</a>
                </dd>
                <dd><a href="${pageContext.request.contextPath}/jsp/tea/examination_Statistics.jsp" style="color: #0C0C0C"><i class="fa fa-file-text"
                                                                                            aria-hidden="true"></i>&nbsp;&nbsp;&nbsp;发布公告</a>
                </dd>
                <dd><a href="${pageContext.request.contextPath}/jsp/tea/score_registration.jsp" style="color: #0C0C0C"><i class="fa fa-file-text"
                                                                                        aria-hidden="true"></i>&nbsp;&nbsp;&nbsp;成绩登记</a>
                </dd>
            </dl>
        </li>


        <li class="layui-nav-item"><a href="">社区</a></li>
    </ul>
</div>

<div style="float: left;width: 729px;height: auto">

    <div style="float: left; margin-top: 0px;margin-bottom: 10px; border: 1px solid #C2BE9E; width: 725px;height: 50px;">
        <p style="font-size: 22px;"><i class="fa fa-commenting" aria-hidden="true"></i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;成绩登记
        </p>
    </div>

    <div style="float: left; margin-top: 0px;margin-bottom: 10px; border: 1px solid #C2BE9E; width: 725px;height: auto;">
        <fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
            <legend>成绩登记</legend>
        </fieldset>

        <div class="layui-form">
            <table class="layui-table">
                <colgroup>
                    <col width="50">
                    <col width="150">
                    <col width="150">
                    <col width="150">
                    <col width="150">
                    <col width="150">
                </colgroup>
                <thead>
                <tr>
                    <th><input name="" lay-skin="primary" lay-filter="allChoose" type="checkbox"></th>
                    <th>科目</th>
                    <th>分数</th>
                    <th>学生姓名</th>
                    <th>学生学号</th>

                </tr>
                </thead>
                <tbody>
                <tr>
                    <td><input name="" lay-skin="primary" type="checkbox"></td>
                    <td><input name="c_name" lay-verify="phone" autocomplete="off" class="layui-input" type="tel"></td>
                    <td><input name="c_score" lay-verify="phone" autocomplete="off" class="layui-input" type="tel"></td>
                    <td><input name="s_name" lay-verify="phone" autocomplete="off" class="layui-input" type="tel"></td>
                    <td><input name="s_number" lay-verify="phone" autocomplete="off" class="layui-input" type="tel">
                    </td>

                </tr>
                </tbody>
            </table>

            <table class="layui-table">
                <colgroup>
                    <col width="50">
                    <col width="150">
                    <col width="150">
                    <col width="150">
                    <col width="150">
                    <col width="150">
                </colgroup>
                <thead>
                <tr>
                    <th><input name="" lay-skin="primary" lay-filter="allChoose" type="checkbox"></th>
                    <th>老师姓名</th>
                    <th>老师工号</th>
                    <th>统计日期</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td><input name="" lay-skin="primary" type="checkbox"></td>
                    <td><input name="t_name" lay-verify="phone" autocomplete="off" class="layui-input" type="tel"></td>
                    <td><input name="t_number" lay-verify="phone" autocomplete="off" class="layui-input" type="tel"></td>

                    <td><input name="date" id="date" lay-verify="date" placeholder="yyyy-mm-dd" autocomplete="off"
                               class="layui-input" onclick="layui.laydate({elem: this})" type="text"></td>
                </tr>
                </tbody>
            </table>
            <button class="layui-btn" style="float: right" id="chengji">提交本次成绩登记</button>
        </div>


    </div>

</div>


<div style="float: left;width: 378px;height: 570px;margin-left: 20px;border: 1px solid #C2BE9E;">
    <div style="margin: 0px">
        <p style="font-size: 30px; color: #23262E"><i class="fa fa-commenting" aria-hidden="true"></i>&nbsp;&nbsp;&nbsp;留言板
        </p>
    </div>
    <div style="float: left">
        <div class="layui-form">
            <table class="layui-table">
                <colgroup>
                    <col width="100">
                    <col width="300">
                </colgroup>
                <thead id="msg">
                <tr>

                    <th>学生姓名</th>
                    <th>留言内容</th>
                </tr>
                </thead>
                <tbody id="showRelationship">


                </tbody>
            </table>
        </div>
    </div>
</div>

<script>
    $(document).ready(function () {
        $.post("${pageContext.request.contextPath}/TeaServlet?method=appointShowLeave_word",
            function (data,status) {
                $("#showRelationship").html();
                for(var i in data) {
                    $("#showRelationship").append(
                        "<tr>"+
                        "                    <td>"+data[i]['stu_name']+"</td>"+
                        "                    <td>"+data[i]['stu_msg']+"</td>"+
                        "                </tr>"+
                        ""
                    )
                }
            },
            "json")
    })
</script>
<script src="/layui/layui.js" charset="utf-8"></script>
<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
<%--提交学生成绩--%>
<script>
    $(function () {
        $("#chengji").click(function () {
            alert(0)
            var c_name = $("input[name='c_name']").val();
            var c_score = $("input[name='c_score']").val();
            var s_name = $("input[name='s_name']").val();
            var s_number = $("input[name='s_number']").val();
            var t_number = $("input[name='t_number']").val();
            var t_name= $("input[name='t_name']").val();
            $.post("${pageContext.request.contextPath}/TeaServlet?method=course",
                {
                    c_name: c_name,
                    c_score: c_score,
                    s_name: s_name,
                    s_number: s_number,
                    t_number: t_number,
                    t_name: t_name
                },

                function (data, status) {

                }
            );
        })



    })
</script>
<script>
    layui.use('form', function () {
        var $ = layui.jquery, form = layui.form();

        //全选
        form.on('checkbox(allChoose)', function (data) {
            var child = $(data.elem).parents('table').find('tbody input[type="checkbox"]');
            child.each(function (index, item) {
                item.checked = data.elem.checked;
            });
            form.render('checkbox');
        });

    });
</script>
<%--显示阅卷日期--%>
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
