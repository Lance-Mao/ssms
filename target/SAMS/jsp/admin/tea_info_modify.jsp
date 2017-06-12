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
    <script type="text/javascript" src="/jquery-3.2.1/jquery-3.2.1.js"></script>
    <script src="/layui/layui.js" charset="utf-8"></script>
    <link rel="stylesheet" href="/layui/css/layui.css" media="all">
    <link rel="stylesheet" href="/font-awesome-4.7.0/css/font-awesome.min.css">
</head>

<%
    String name = (String) request.getSession().getAttribute("adminName");
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
            <a href="javascript:;"><i class="fa fa-cog" aria-hidden="true"></i>&nbsp;&nbsp;&nbsp;系统设置</a>
            <dl class="layui-nav-child">
                <dd><a href="">个人设置</a></dd>
                <dd><a href="">修改密码</a></dd>

            </dl>
        </li>
        <li class="layui-nav-item"><a href="">登出</a></li>

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

        <div style="width: 200px;height: 110px" align="center"><img src="/img/user.jpg"></div>
        <div align="center"><%=request.getSession().getAttribute("adminName")%>
        </div>
        <div align="center"><%=request.getSession().getAttribute("adminType")%>
        </div>
    </div>


    <ul class="layui-nav layui-nav-tree" lay-filter="demo">
        <li class="layui-nav-item layui-nav-itemed">
            <a href="javascript:; " style="background-color: #aaaaaa;">信息管理</a>
            <dl class="layui-nav-child" style="background-color: #aaaaaa;">
                <dd><a href="/jsp/admin/index.jsp" style="color: #0C0C0C">首页</a></dd>
                <dd><a href="/jsp/admin/stu_info_input.jsp" style="color: #0C0C0C">学生信息录入</a></dd>
                <dd><a href="/jsp/admin/stu_info_modify.jsp" style="color: #0C0C0C">学生信息修改</a></dd>
                <dd><a href="/jsp/admin/tea_info_input.jsp" style="color: #0C0C0C">教师信息录入</a></dd>
                <dd><a href="/jsp/admin/tea_info_modify.jsp" style="color: #0C0C0C">教师信息修改</a></dd>
                <dd><a href="/jsp/admin/grade_info_input.jsp" style="color: #0C0C0C">年级信息录入</a></dd>
                <dd><a href="/jsp/admin/grade_info_modify.jsp" style="color: #0C0C0C">年级信息修改</a></dd>
                <dd><a href="/jsp/admin/course_info_input.jsp" style="color: #0C0C0C">课程信息录入</a></dd>
                <dd><a href="/jsp/admin/course_info_modify.jsp" style="color: #0C0C0C">课程信息修改</a></dd>

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
        信息管理页面</p></div>

    <div style="float: left; margin-top: 10px;margin-bottom: 10px; border: 1px solid #C2BE9E; width: 1100px;height: auto;"
         id="showSubject">
        <fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
            <legend>教师信息录入</legend>
        </fieldset>

        <form class="layui-form" action="">

            <div class="layui-form-item">
                <div class="layui-inline">
                    <label class="layui-form-label" style="width: auto">请输入要修改该教师信息的工号</label>
                    <div class="layui-input-inline">
                        <input name="number" lay-verify="number" autocomplete="off" placeholder="请输入学号"
                               class="layui-input"
                               type="text">
                    </div>
                </div>
            </div>

            <div class="layui-form-item">

                <div class="layui-inline">
                    <label class="layui-form-label">教师姓名</label>
                    <div class="layui-input-inline">
                        <input name="stu_name" autocomplete="off" placeholder="请输入姓名" class="layui-input" type="text">
                    </div>
                </div>

                <div class="layui-inline">
                    <label class="layui-form-label">所带课程</label>
                    <div class="layui-input-inline">
                        <input name="stu_grade_info" autocomplete="off" placeholder="请输入年级信息" class="layui-input"
                               type="text">
                    </div>
                </div>

                <div class="layui-inline">
                    <label class="layui-form-label">所带班级</label>
                    <div class="layui-input-inline">
                        <input name="stu_class_info" autocomplete="off" placeholder="请输入班级信息" class="layui-input"
                               type="text">
                    </div>
                </div>

                <div class="layui-inline">
                    <label class="layui-form-label">验证手机</label>
                    <div class="layui-input-inline">
                        <input name="phone" lay-verify="phone" autocomplete="off" placeholder="请输入手机号"
                               class="layui-input" type="tel">
                    </div>
                </div>

                <div class="layui-inline">
                    <label class="layui-form-label">入校日期</label>
                    <div class="layui-input-inline">
                        <input name="date" id="date" lay-verify="date" placeholder="yyyy-mm-dd" autocomplete="off"
                               class="layui-input" onclick="layui.laydate({elem: this})" type="text">
                    </div>
                </div>
            </div>

            <div class="layui-form-item">
                <label class="layui-form-label">住址信息</label>
                <div class="layui-input-inline">
                    <select name="quiz1">
                        <option value="">请选择省</option>
                        <option value="浙江" selected="">浙江省</option>
                        <option value="你的工号">江西省</option>
                        <option value="你最喜欢的老师">福建省</option>
                    </select>
                </div>
                <div class="layui-input-inline">
                    <select name="quiz2">
                        <option value="">请选择市</option>
                        <option value="杭州">杭州</option>
                        <option value="宁波" disabled="">宁波</option>
                        <option value="温州">温州</option>
                        <option value="温州">台州</option>
                        <option value="温州">绍兴</option>
                    </select>
                </div>
                <div class="layui-input-inline">
                    <select name="quiz3">
                        <option value="">请选择县/区</option>
                        <option value="西湖区">西湖区</option>
                        <option value="余杭区">余杭区</option>
                        <option value="拱墅区">临安市</option>
                    </select>
                </div>
            </div>


            <div class="layui-form-item">
                <label class="layui-form-label">单选框</label>
                <div class="layui-input-block">
                    <input name="sex" value="男" title="男" checked="" type="radio">
                    <input name="sex" value="女" title="女" type="radio">
                    <input name="sex" value="禁" title="禁用" disabled="" type="radio">
                </div>
            </div>
            <div class="layui-form-item layui-form-text">
                <label class="layui-form-label">备注信息</label>
                <div class="layui-input-block">
                    <textarea placeholder="请输入内容" class="layui-textarea"></textarea>
                </div>
            </div>

            <div class="layui-form-item">
                <div class="layui-input-block">
                    <button class="layui-btn" lay-submit="" lay-filter="demo1">立即提交</button>
                    <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                </div>
            </div>
        </form>
    </div>
</div>

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
