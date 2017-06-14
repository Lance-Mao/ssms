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
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}css/normalize.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}css/common.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}css/style2.css" />
    <script>document.documentElement.className = 'js';</script>
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


    <div style="float: left; margin-top: 10px;margin-bottom: 10px; border: 1px solid #C2BE9E; width: 1100px;height: auto;"
         id="showSubject">

        <svg class="hidden">
            <defs>
                <symbol id="icon-arrow" viewBox="0 0 24 24">
                    <title>arrow</title>
                    <polygon points="6.3,12.8 20.9,12.8 20.9,11.2 6.3,11.2 10.2,7.2 9,6 3.1,12 9,18 10.2,16.8 "/>
                </symbol>
                <symbol id="icon-drop" viewBox="0 0 24 24">
                    <title>drop</title>
                    <path d="M12,21c-3.6,0-6.6-3-6.6-6.6C5.4,11,10.8,4,11.4,3.2C11.6,3.1,11.8,3,12,3s0.4,0.1,0.6,0.3c0.6,0.8,6.1,7.8,6.1,11.2C18.6,18.1,15.6,21,12,21zM12,4.8c-1.8,2.4-5.2,7.4-5.2,9.6c0,2.9,2.3,5.2,5.2,5.2s5.2-2.3,5.2-5.2C17.2,12.2,13.8,7.3,12,4.8z"/><path d="M12,18.2c-0.4,0-0.7-0.3-0.7-0.7s0.3-0.7,0.7-0.7c1.3,0,2.4-1.1,2.4-2.4c0-0.4,0.3-0.7,0.7-0.7c0.4,0,0.7,0.3,0.7,0.7C15.8,16.5,14.1,18.2,12,18.2z"/>
                </symbol>
                <symbol id="icon-github" viewBox="0 0 32.58 31.77">
                    <title>github</title>
                    <path d="M16.29,0a16.29,16.29,0,0,0-5.15,31.75c.81.15,1.11-.35,1.11-.79s0-1.41,0-2.77C7.7,29.18,6.74,26,6.74,26a4.31,4.31,0,0,0-1.81-2.38c-1.48-1,.11-1,.11-1a3.42,3.42,0,0,1,2.5,1.68,3.47,3.47,0,0,0,4.74,1.35,3.48,3.48,0,0,1,1-2.18C9.7,23.08,5.9,21.68,5.9,15.44a6.3,6.3,0,0,1,1.68-4.37,5.86,5.86,0,0,1,.16-4.31s1.37-.44,4.48,1.67a15.44,15.44,0,0,1,8.16,0c3.11-2.11,4.48-1.67,4.48-1.67A5.85,5.85,0,0,1,25,11.07a6.29,6.29,0,0,1,1.67,4.37c0,6.26-3.81,7.63-7.44,8a3.89,3.89,0,0,1,1.11,3c0,2.18,0,3.93,0,4.47s.29.94,1.12.78A16.29,16.29,0,0,0,16.29,0Z"/>
                </symbol>
            </defs>
        </svg>
        <main>

            <div class="calendar-wrap">
                <div class="calendar">
                    <div class="cube" data-bg-color="#F7E8ED" data-title="Peaceful World"></div>
                    <div class="cube" data-bg-color="#F2D9E6" data-title="Impossible"></div>
                    <div class="cube" data-bg-color="#ECC6DE" data-title="Everything"></div>
                    <div class="cube" data-bg-color="#E0ECF5" data-title="Hung Up"></div>
                    <div class="cube" data-bg-color="#DDF4DE" data-title="Live Freely"></div>
                    <div class="cube" data-bg-color="#F0F1D5" data-title="Tolerable Planet"></div>
                    <div class="cube" data-bg-color="#EEDECD" data-title="Normal"></div>
                    <div class="cube" data-bg-color="#B8E6B3" data-title="Superhero"></div>
                    <div class="cube" data-bg-color="#ABE3D8" data-title="New Weariness"></div>
                    <div class="cube" data-bg-color="#E0E1F5" data-title="The Sinner"></div>
                    <div class="cube" data-bg-color="#F7E8ED" data-title="Intellectual Wealth"></div>
                    <div class="cube" data-bg-color="#F2D9E6" data-title="Limiting Principle"></div>
                    <div class="cube" data-bg-color="#DFD1F0" data-title="Quaintly Free"></div>
                    <div class="cube" data-bg-color="#E0ECF5" data-title="On A Level"></div>
                    <div class="cube" data-bg-color="#DDF4DE" data-title="Experiences"></div>
                    <div class="cube" data-bg-color="#F0F1D5" data-title="Entrenched"></div>
                    <div class="cube" data-bg-color="#EEDECD" data-title="Happiness"></div>
                    <div class="cube" data-bg-color="#B8E6B3" data-title="Working Jobs"></div>
                    <div class="cube" data-bg-color="#ABE3D8" data-title="Spending Billions"></div>
                    <div class="cube" data-bg-color="#E0E1F5" data-title="Principle Of Having"></div>
                    <div class="cube" data-bg-color="#DFD1F0" data-title="Enemies"></div>
                    <div class="cube" data-bg-color="#DFD1F0" data-title="Better World"></div>
                    <div class="cube" data-inactive data-bg-color="#6161616" data-title="Coming soon"></div>
                    <div class="cube" data-inactive data-bg-color="#6161616" data-title="Coming soon"></div>
                    <div class="cube" data-inactive data-bg-color="#6161616" data-title="Coming soon"></div>
                </div>
                <div class="content">
                    <div class="content__block">
                        <h3 class="content__title">Peaceful World</h3>
                        <p class="content__description">If everyone demanded peace instead of another television set, then there'd be peace.</p>
                        <p class="content__meta">John Lennon</p>
                    </div>
                    <div class="content__block">
                        <h3 class="content__title">Impossible</h3>
                        <p class="content__description">To be content with little is difficult; to be content with much, impossible.</p>
                        <p class="content__meta">Marie von Ebner-Eschenbach</p>
                    </div>
                    <div class="content__block">
                        <h3 class="content__title">Everything</h3>
                        <p class="content__description">The things you own end up owning you. It's only after you lose everything that you're free to do anything.</p>
                        <p class="content__meta">Chuck Palahniuk</p>
                    </div>
                    <div class="content__block">
                        <h3 class="content__title">Hung Up</h3>
                        <p class="content__description">A lot of people get so hung up on what they can't have that they don't think for a second about whether they really want it.</p>
                        <p class="content__meta">Lionel Shriver</p>
                    </div>
                    <div class="content__block">
                        <h3 class="content__title">Live Freely</h3>
                        <p class="content__description">It is the preoccupation with possessions, more than anything else that prevents us from living freely and nobly.</p>
                        <p class="content__meta">Bertrand Russell</p>
                    </div>
                    <div class="content__block">
                        <h3 class="content__title">Tolerable Planet</h3>
                        <p class="content__description">What is the use of a house if you haven't got a tolerable planet to put it on?</p>
                        <p class="content__meta">Henry David Thoreau</p>
                    </div>
                    <div class="content__block">
                        <h3 class="content__title">Normal</h3>
                        <p class="content__description">Normal is getting dressed in clothes that you buy for work and driving through traffic in a car that you are still paying for - in order to get to the job you need to pay for the clothes and the car, and the house you leave vacant all day so you can afford to live in it.</p>
                        <p class="content__meta">Ellen Goodman</p>
                    </div>
                    <div class="content__block">
                        <h3 class="content__title">Superhero</h3>
                        <p class="content__description">The reality of loving God is loving him like he's a Superhero who actually saved you from stuff rather than a Santa Claus who merely gave you some stuff.</p>
                        <p class="content__meta">Criss Jami</p>
                    </div>
                    <div class="content__block">
                        <h3 class="content__title">New Weariness</h3>
                        <p class="content__description">Every increased possession loads us with new weariness.</p>
                        <p class="content__meta">John Ruskin</p>
                    </div>
                    <div class="content__block">
                        <h3 class="content__title">The Sinner</h3>
                        <p class="content__description">The Christmas tree, twinkling with lights, had a mountain of gifts piled up beneath it, like offerings to the great god of excess.</p>
                        <p class="content__meta">Tess Gerritsen</p>
                    </div>
                    <div class="content__block">
                        <h3 class="content__title">Intellectual Wealth</h3>
                        <p class="content__description">Whoever prefers the material comforts of life over intellectual wealth is like the owner of a palace who moves into the servants' quarters and leaves the sumptuous rooms empty.</p>
                        <p class="content__meta">Marie von Ebner-Eschenbach</p>
                    </div>
                    <div class="content__block">
                        <h3 class="content__title">Limiting Principle</h3>
                        <p class="content__description">An attitude to life which seeks fulfilment in the single-minded pursuit of wealth - in short, materialism - does not fit into this world, because it contains within itself no limiting principle, while the environment in which it is placed is strictly limited.</p>
                        <p class="content__meta">Ernst F. Schumacher</p>
                    </div>
                    <div class="content__block">
                        <h3 class="content__title">Quaintly Free</h3>
                        <p class="content__description">To have so little, and it of so little value, was to be quaintly free.</p>
                        <p class="content__meta">Wallace Stegner</p>
                    </div>
                    <div class="content__block">
                        <h3 class="content__title">On A Level</h3>
                        <p class="content__description">I've always felt that your belongings have never been on a level with you.</p>
                        <p class="content__meta">George Eliot</p>
                    </div>
                    <div class="content__block">
                        <h3 class="content__title">Experiences</h3>
                        <p class="content__description">We all need new ideas, images, and experiences far more than we need new stoves or cars or computers.</p>
                        <p class="content__meta">Bill Holm</p>
                    </div>
                    <div class="content__block">
                        <h3 class="content__title">Entrenched</h3>
                        <p class="content__description">We are being called upon to act against a prevailing culture, to undermine our own entrenched tendency to accumulate and to consume, and to refuse to define our individuality by our presumed ability to do whatever we want.</p>
                        <p class="content__meta">Lyanda Lynn Haupt</p>
                    </div>
                    <div class="content__block">
                        <h3 class="content__title">Happiness</h3>
                        <p class="content__description">The way of the consumerist culture is to spend so much energy chasing happiness that it has none left to be happy.</p>
                        <p class="content__meta">Criss Jami</p>
                    </div>
                    <div class="content__block">
                        <h3 class="content__title">Working Jobs</h3>
                        <p class="content__description">Advertising has us chasing cars and clothes, working jobs we hate so we can buy shit we don't need.</p>
                        <p class="content__meta">Chuck Palahniuk</p>
                    </div>
                    <div class="content__block">
                        <h3 class="content__title">Spending Billions</h3>
                        <p class="content__description">Our economy is based on spending billions to persuade people that happiness is buying things, and then insisting that the only way to have a viable economy is to make things for people to buy so they’ll have jobs and get enough money to buy things.</p>
                        <p class="content__meta">Philip Slater</p>
                    </div>
                    <div class="content__block">
                        <h3 class="content__title">Principle Of Having</h3>
                        <p class="content__description">The real opposition is that between the ego-bound man, whose existence is structured by the principle of having, and the free man, who has overcome his egocentricity.</p>
                        <p class="content__meta">Erich Fromm</p>
                    </div>
                    <div class="content__block">
                        <h3 class="content__title">Enemies</h3>
                        <p class="content__description">Happy slaves are the bitterest enemies of freedom.</p>
                        <p class="content__meta">Marie von Ebner-Eschenbach</p>
                    </div>
                    <div class="content__block">
                        <h3 class="content__title">Better World</h3>
                        <p class="content__description">If you assume that there is no hope, you guarantee that there will be no hope. If you assume that there is an instinct for freedom, that there are opportunities to change things, then there is a possibility that you can contribute to making a better world.</p>
                        <p class="content__meta">Noam Chomsky</p>
                    </div>
                    <div class="content__number">0</div>
                    <button class="btn-back" aria-label="Back to the grid view">&crarr;</button>
                </div><!-- /content -->
            </div>
        </main>
        <script src="${pageContext.request.contextPath}js/charming.min.js"></script>
        <script src="${pageContext.request.contextPath}js/anime.min.js"></script>
        <script src="${pageContext.request.contextPath}js/textfx.js"></script>
        <script src="${pageContext.request.contextPath}js/main2.js"></script>
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
