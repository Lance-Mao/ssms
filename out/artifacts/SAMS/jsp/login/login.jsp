<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2017/6/7
  Time: 9:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isELIgnored="false" %>
<html>
<head>
    <title>学生成绩管理系统登录页面</title>
    <script type="text/javascript" src="${pageContext.request.contextPath}/jquery-3.2.1/jquery-3.2.1.js"></script>
    <link href="css/login.css" rel="stylesheet" rev="stylesheet" type="text/css" media="all"/>
    <script type="text/javascript" src="${pageContext.request.contextPath}/jquery-3.2.1/jquery-3.2.1.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/jquery-3.2.1/jquery-3.2.1.min.js"></script>

    <%--<script type="text/javascript" src="js/jQuery1.7.js"></script>--%>
    <%--<script type="text/javascript" src="js/jquery-1.8.2.min.js"></script>--%>
    <%--<script type="text/javascript" src="js/jquery1.42.min.js"></script>--%>
    <%--<script type="text/javascript" src="js/jquery.SuperSlide.js"></script>--%>
    <%--<script type="text/javascript" src="js/Validform_v5.3.2_min.js"></script>--%>

</head>
<body>
<script type="text/javascript">
    $(document).ready(function(){
        var $tab_li = $('#tab ul li');
        $tab_li.hover(function(){
            $(this).addClass('selected').siblings().removeClass('selected');
            var index = $tab_li.index(this);
            $('div.tab_box > div').eq(index).show().siblings().hide();
        });
    });


</script>
<div id="tab">
    <ul class="tab_menu">
        <li class="selected">学生登录</li>
        <li>教师登录</li>
        <li>管理员登录</li>
    </ul>
    <div class="tab_box">
        <!-- 学生登录开始 -->
        <div>
            <%--<div class="stu_error_box"></div>--%>
            <form method="post" action="${pageContext.request.contextPath}/StuServlet?method=login" class="stu_login_error">
                <div id="number">
                    <label>学&nbsp;&nbsp;&nbsp;号：</label>
                    <input type="text" id="stu_number_hide" name="number" placeholder="输入学号" nullmsg="学号不能为空！"
                           datatype="s6-18" errormsg="学号范围在6~18个字符之间！" sucmsg="学号验证通过！"/>
                    <!--ajaxurl="demo/valid.jsp"-->
                </div>
                <div id="s_password">
                    <label>密&nbsp;&nbsp;&nbsp;码：</label>
                    <input type="password" id="stu_password_hide" name="password" placeholder="输入密码" nullmsg="密码不能为空！"
                           datatype="*6-16" errormsg="密码范围在6~16位之间！" sucmsg="密码验证通过！"/>
                </div>
                <div id="code">
                    <label>验证码：</label>
                    <input type="text" id="stu_code_hide" name="code" placeholder="输入验证码" nullmsg="验证码不能为空！" datatype="*4-4"
                           errormsg="验证码有4位数！" sucmsg="验证码验证通过！"/>
                    <img src="images/captcha.jpg" title="点击更换" alt="验证码占位图"/></div>
                <div id="s_remember">
                    <input type="checkbox" name="remember">
                    <label>记住密码</label>
                </div>
                <span style="color: red"><%=
                request.getSession().getAttribute("info")

                %><% request.getSession().setMaxInactiveInterval(5*60*60);%></span>
                <div id="s_login">
                    <button id="s_submit" type="submit" class="denglu">登录</button>
                </div>
            </form>
        </div>
        <!-- 学生登录结束-->
        <!-- 导师登录开始-->
        <div class="hide">
            <form action="${pageContext.request.contextPath}/TeaServlet?method=login" method="post" class="tea_login_error">
                <div id="t_username">
                    <label>教工号：</label>
                    <input type="text" id="tea_username_hide" name="username" placeholder="输入教工号"/>
                </div>
                <div id="t_password">
                    <label>密&nbsp;&nbsp;&nbsp;码：</label>
                    <input type="password" id="tea_password_hide" name="password" placeholder="输入密码" />
                </div>
                <div id="code">
                    <label>验证码：</label>
                    <input type="text" id="tea_code_hide" name="code" placeholder="输入验证码"/>
                    <img src="images/captcha.jpg" title="点击更换" alt="验证码占位图"/></div>
                <div id="t_remember">
                    <input type="checkbox" name="remember">
                    <label>记住密码</label>
                </div>
                <div id="t_login">
                    <button type="submit" class="denglu">登录</button>
                </div>
            </form>
        </div>
        <!-- 导师登录结束-->
        <!-- 教务登录开始-->
        <div class="hide">
            <div class="sec_error_box"></div>
            <form action="${pageContext.request.contextPath}/AdminServlet?method=login" method="post"  class="sec_login_error">
                <div id="username">
                    <label>教务号：</label>
                    <input type="text" id="sec_username_hide" name="username" placeholder="输入教务号" />
                </div>
                <div id="password">
                    <label>密&nbsp;&nbsp;&nbsp;码：</label>
                    <input type="password" id="sec_password_hide" name="password" placeholder="输入密码" />
                </div>
                <div id="code">
                    <label>验证码：</label>
                    <input type="text" id="sec_code_hide" name="code" placeholder="输入验证码" />
                    <img src="images/captcha.jpg" title="点击更换" alt="验证码占位图"/></div>
                <div id="remember">
                    <input type="checkbox" name="remember">
                    <label>记住密码</label>
                </div>
                <div id="login">
                    <button type="submit" class="denglu">登录</button>
                </div>
            </form>
        </div>
        <!-- 教务登录结束-->
    </div>
</div>
<div class="screenbg">
    <ul>
        <li><a href="javascript:;"><img src="images/0.jpg"></a></li>
        <li><a href="javascript:;"><img src="images/1.jpg"></a></li>
        <li><a href="javascript:;"><img src="images/3.jpg"></a></li>
    </ul>
</div>
<script>
    $(function () {
      $(".denglu").click(function () {
          $(".info").show();
      })
    })
</script>
</body>
</html>
