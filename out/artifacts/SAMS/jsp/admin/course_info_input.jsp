<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2017/6/5
  Time: 16:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>TronClass</title>
    <script type="text/javascript" src="${pageContext.request.contextPath}/jquery-3.2.1/jquery-3.2.1.js"></script>
    <script src="${pageContext.request.contextPath}/layui/layui.js" charset="utf-8"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css" media="all">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/font-awesome-4.7.0/css/font-awesome.min.css">
</head>

<%
    String name = (String) request.getSession().getAttribute("adminName");
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
            <a href="javascript:;"><i class="fa fa-cog" aria-hidden="true"></i>&nbsp;&nbsp;&nbsp;系统设置</a>
            <dl class="layui-nav-child">
                <dd><a href="">个人设置</a></dd>
                <dd><a href="">修改密码</a></dd>

            </dl>
        </li>
        <li class="layui-nav-item"><a href="${pageContext.request.contextPath}/jsp/login/login.jsp">登出</a></li>

        <span style="width: 500px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
        <li class="layui-nav-item layui-this">
            <a href=""><i class="fa fa-user fa-4"
                          aria-hidden="true"></i>&nbsp;&nbsp;&nbsp;<%=request.getSession().getAttribute("adminName")%>
            </a>
            <dl class="layui-nav-child">
                <dd><a href="">信息设置</a></dd>
                <dd><a href="">修改密码</a></dd>

            </dl>
        </li>
        <li class="layui-nav-item">
            <a href="javascript:;">我的主页</a>
            <dl class="layui-nav-child">
                <dd><a href="">查看成绩</a></dd>
                <dd><a href="">个人中心</a></dd>
                <dd class="layui-this"><a href="">选中项</a></dd>
                <dd><a href="">课程信息</a></dd>
            </dl>
        </li>
    </ul>
</div>
<div style="float: left; margin-right: 20px">
    <div style="width: 200px;height: 180px;border: 1px solid #eeeeee;">

        <div style="width: 200px;height: 110px" align="center"><img src="${pageContext.request.contextPath}/img/user.jpg"></div>
        <div align="center"><%=request.getSession().getAttribute("adminName")%>
        </div>
        <div align="center"><%=request.getSession().getAttribute("adminType")%>
        </div>
    </div>


    <ul class="layui-nav layui-nav-tree" lay-filter="demo">
        <li class="layui-nav-item layui-nav-itemed">
            <a href="javascript:; " style="background-color: #aaaaaa;">信息管理</a>
            <dl class="layui-nav-child" style="background-color: #aaaaaa;">
                <dd><a href="${pageContext.request.contextPath}/jsp/admin/index.jsp" style="color: #0C0C0C">首页</a></dd>
                <dd><a href="${pageContext.request.contextPath}/jsp/admin/stu_info_input.jsp" style="color: #0C0C0C">学生信息录入</a></dd>
                <dd><a href="${pageContext.request.contextPath}/jsp/admin/tea_info_input.jsp" style="color: #0C0C0C">教师信息录入</a></dd>
                <dd><a href="${pageContext.request.contextPath}/jsp/admin/grade_info_input.jsp" style="color: #0C0C0C">年级信息录入</a></dd>
                <dd><a href="${pageContext.request.contextPath}/jsp/admin/course_info_input.jsp" style="color: #0C0C0C">课程信息录入</a></dd>
            </dl>
        </li>
        <li class="layui-nav-item">
            <a href="javascript:;">我的设置</a>
            <dl class="layui-nav-child" style="background-color: #aaaaaa;">
                <dd><a href="" style="color: #0C0C0C">个人设置</a></dd>
                <dd><a href="" style="color: #0C0C0C">修改密码</a></dd>
            </dl>
        </li>

        <li class="layui-nav-item"><a href="">社区</a></li>
    </ul>
</div>
<div style="float: left;width: 729px;height: auto">
    <div style="float: left; margin-bottom: 10px; border: 1px solid #C2BE9E; width: 1100px;height: 35px;"><p
            style="font-size: 15px;text-align: center;padding-top: 5px">
        我的所有课程</p></div>

    <div style="float: left; margin-top: 10px;margin-bottom: 10px; border: 1px solid #C2BE9E; width: 1100px;height: auto;"
         id="showSubject">
        <fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
            <legend>课程学生教师关系</legend>
        </fieldset>


        <form class="layui-form" action="${pageContext.request.contextPath}/AdminServlet?method=addRelationship"
              method="post">
            <div class="layui-form-item">
                <div class="layui-inline">
                    <label class="layui-form-label">学生学号</label>
                    <div class="layui-input-inline">
                        <input name="number" lay-verify="number" autocomplete="off" placeholder="请输入学生学号"
                               class="layui-input"
                               type="text">
                    </div>
                </div>

                <div class="layui-inline">
                    <label class="layui-form-label">学生姓名</label>
                    <div class="layui-input-inline">
                        <input name="stu_name" autocomplete="off" placeholder="请输入学生姓名" class="layui-input" type="text">
                    </div>
                </div>

                <div class="layui-inline">
                    <label class="layui-form-label">教师工号</label>
                    <div class="layui-input-inline">
                        <input name="tea_number" autocomplete="off" placeholder="请输入教师工号" class="layui-input"
                               type="text">
                    </div>
                </div>

                <div class="layui-inline">
                    <label class="layui-form-label">教师姓名</label>
                    <div class="layui-input-inline">
                        <input name="tea_name" autocomplete="off" placeholder="请输入教师姓名" class="layui-input"
                               type="text">
                    </div>
                </div>

                <div class="layui-inline">
                    <label class="layui-form-label">课程名称</label>
                    <div class="layui-input-inline">
                        <input name="c_name" autocomplete="off" placeholder="请输入课程名称" class="layui-input" type="tel">
                    </div>
                </div>

                <div class="layui-inline">
                    <label class="layui-form-label">课程学分</label>
                    <div class="layui-input-inline">
                        <input name="credit" autocomplete="off" placeholder="请输入课程学分" class="layui-input" type="tel">
                    </div>
                </div>

                <div class="layui-form-item">
                    <div class="layui-input-block">
                        <button class="layui-btn" lay-submit="">立即提交</button>
                        <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>

<div style="float: left">
    <fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
        <legend>学生信息</legend>
    </fieldset>

    <div class="layui-form">
        <table class="layui-table">
            <colgroup>
                <col width="110">
                <col width="110">
                <col width="110">
                <col width="110">
                <col width="110">
                <col width="110">
                <col width="110">
                <col width="110">
                <col width="110">

            </colgroup>
            <thead>
            <tr>
                <th><input name="" lay-skin="primary" lay-filter="allChoose" type="checkbox"></th>
                <th>学生学号</th>
                <th>学生姓名</th>
                <th>教师工号</th>
                <th>教师姓名</th>
                <th>课程名称</th>
                <th>课程学分</th>
                <th>修改信息</th>
                <th>删除信息</th>

            </tr>
            </thead>
            <tbody id="showRelationship">

            </tbody>
        </table>
    </div>
</div>



<script>
    $(document).ready(function () {
        $.post("${pageContext.request.contextPath}/AdminServlet?method=showRelationship",
            function (data) {
                $("#showRelationship").html();
                for (var i = 0; i < data.length; i++) {
                    $("#showRelationship").append(
                        "<tr>" +
                        "<td><input name='' lay-skin='primary' type='checkbox'></td>" +
                        "<td>" + data[i]['s_number'] + "</td>" +
                        "<td>" + data[i]['s_name'] + "</td>" +
                        "<td>" + data[i]['t_number'] + "</td>" +
                        "<td>" + data[i]['t_name'] + "</td>" +
                        "<td>" + data[i]['c_name'] + "</td>" +
                        "<td>" + data[i]['credit'] + "</td>" +
                        "<td><button onclick='alert_stuInfo(" + data[i]['s_number'] + ")' class='layui-btn'><i  class='layui-icon'  ></i></button></td>" +
                        "<td><button  onclick='delRelationship(" + data[i]['s_number'] + ")' class='layui-btn'><i class='layui-icon'></i></button></td>" +
                        "</tr>"
                    )
                }
            },
            "json"
        )
    })
    
    function delRelationship(s_number) {
        var s_number = s_number;
        alert(s_number)
        $.post("${pageContext.request.contextPath}/AdminServlet?method=delRelationship",
            {
                s_number:s_number
            })
    }
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
