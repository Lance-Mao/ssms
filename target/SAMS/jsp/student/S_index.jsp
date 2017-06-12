<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>学生成绩管理系统</title>
  <link rel="stylesheet" href="./layui/css/layui.css"  media="all">
   <script src="./layui/layui.js" charset="utf-8"></script>
</head>
<body>
      <fieldset class="layui-elem-field site-demo-button">
  <div>
    <button class="layui-btn layui-btn-primary">考试统计</button>
    <button class="layui-btn">修改密码</button>
   
    <ul class="layui-nav">
 
  <li class="layui-nav-item">
    <a href="javascript:">学生个人信息中心</a>
    <dl class="layui-nav-child">
      <dd><a href="">查看成绩</a></dd>
      <dd><a href="">个人信息中心</a></dd>
      <dd><a href="">个人信息设置</a></dd>

    </dl>
  </li>
</ul>

    
    <button class="layui-btn layui-btn-warm">留言</button>
    <button class="layui-btn layui-btn-danger">登出系统</button>
  </div>
</fieldset>
<fieldset class="layui-elem-field site-demo-button">


<fieldset class="layui-elem-field layui-field-title">

</fieldset>
 
<ul class="layui-nav">

  <li class="layui-nav-item layui-this">

    <dl class="layui-nav-child">
      <dd><a href="">选项1</a></dd>
      <dd><a href="">选项2</a></dd>
      <dd><a href="">选项3</a></dd>
    </dl>
  </li>

  <li class="layui-nav-item">

    <dl class="layui-nav-child">
      <dd><a href="">移动模块</a></dd>
      <dd><a href="">后台模版</a></dd>
      <dd class="layui-this"><a href="">选中项</a></dd>
      <dd><a href="">电商平台</a></dd>
    </dl>
  </li>

</ul>
<div style="float: left; width: 100px; height: 100px">
</div>
 <div style="float: left">
<fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">

</fieldset>
 
<ul class="layui-nav layui-nav-tree" lay-filter="demo">
  <li class="layui-nav-item layui-nav-itemed">
    <a href="javascript:;">首页</a>
    <dl class="layui-nav-child">
      <dd><a href="javascript:;">我的课程</a></dd>
      <dd><a href="javascript:;">我的资源</a></dd>
      <dd><a href="javascript:;">题库</a></dd>
      <dd><a href="">微课</a></dd>
    </dl>
  </li>
  <li class="layui-nav-item">
    <a href="javascript:;">个人设置</a>
    <dl class="layui-nav-child">
      <dd><a href="">移动模块</a></dd>
      <dd><a href="">后台模版</a></dd>
      <dd><a href="">电商平台</a></dd>
    </dl>
  </li>
  <li class="layui-nav-item"><a href="">应用中心</a></li>
  <li class="layui-nav-item"><a href="">课程管理</a></li>
</ul>
 
<fieldset class="layui-elem-field layui-field-title" style="margin-top: 50px;">

</fieldset>
</script>

</div>


<div style="float: left; width: 750px; height: 1000px">

<fieldset class="layui-elem-field layui-field-title">
  <legend>引用区块 - 默认风格</legend>
</fieldset>
<blockquote class="layui-elem-quote">这个貌似不用多介绍，因为你已经在太多的地方都看到</blockquote>
<fieldset class="layui-elem-field layui-field-title" style="margin-top: 50px;">
  
  <legend>引用区块 - 一般风格</legend>
</fieldset>
<blockquote class="layui-elem-quote layui-quote-nm">
  猿强，则国强。国强，则猿更强！ 
  <br>——孟子（好囖。。其实这特喵的是我说的）
</blockquote>
<fieldset class="layui-elem-field layui-field-title"  style="margin-top: 50px;">
  
  <legend>引用区块 - 默认风格</legend>
</fieldset>
<blockquote class="layui-elem-quote">这个貌似不用多介绍，因为你已经在太多的地方都看到</blockquote>
<fieldset class="layui-elem-field layui-field-title" style="margin-top: 50px;">

<legend>引用区块 - 一般风格</legend>
</fieldset>
<blockquote class="layui-elem-quote layui-quote-nm">
  猿强，则国强。国强，则猿更强！ 
  <br>——孟子（好囖。。其实这特喵的是我说的）
</blockquote>
<fieldset class="layui-elem-field layui-field-title"  style="margin-top: 50px;">

<legend>引用区块 - 默认风格</legend>
</fieldset>
<blockquote class="layui-elem-quote">这个貌似不用多介绍，因为你已经在太多的地方都看到</blockquote>
<fieldset class="layui-elem-field layui-field-title" style="margin-top: 50px;">

<legend>引用区块 - 一般风格</legend>
</fieldset>
<blockquote class="layui-elem-quote layui-quote-nm">
  猿强，则国强。国强，则猿更强！ 
  <br>——孟子（好囖。。其实这特喵的是我说的）
</blockquote>
<fieldset class="layui-elem-field layui-field-title"  style="margin-top: 50px;">

</div>



<div style="float: left">
<fieldset class="layui-elem-field layui-field-title" style="margin-top: 50px;">
  <legend>自定义工具栏</legend>
</fieldset>
 
<div style="margin-bottom: 20px; width: 100px;">
  <textarea class="layui-textarea" id="LAY_demo2" style="display: none"></textarea>
</div>               
          
<script src="./layui/css/layui.css" charset="utf-8">
//<link rel="stylesheet" href="./layui/css/layui.css"  media="all">
</script>
<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
<script>
layui.use('layedit', function(){
  var layedit = layui.layedit
  ,$ = layui.jquery;
  
  //构建一个默认的编辑器
  var index = layedit.build('LAY_demo1');
  
  //编辑器外部操作
  var active = {
    content: function(){
      alert(layedit.getContent(index)); //获取编辑器内容
    }
    ,text: function(){
      alert(layedit.getText(index)); //获取编辑器纯文本内容
    }
    ,selection: function(){
      alert(layedit.getSelection(index));
    }
  };
  
  $('.site-demo-layedit').on('click', function(){
    var type = $(this).data('type');
    active[type] ? active[type].call(this) : '';
  });
  
  //自定义工具栏
  layedit.build('LAY_demo2', {
    tool: ['face', 'link', 'unlink', '|', 'left', 'center', 'right']
    ,height: 100
  })
});
</script>
</div>



<script>
layui.use('element', function(){
  var $ = layui.jquery
  ,element = layui.element(); //Tab的切换功能，切换事件监听等，需要依赖element模块
  
  //触发事件
  var active = {
    setPercent: function(){
      //设置50%进度
      element.progress('demo', '50%')
    }
    ,loading: function(othis){
      var DISABLED = 'layui-btn-disabled';
      if(othis.hasClass(DISABLED)) return;
    
      //模拟loading
      var n = 0, timer = setInterval(function(){
        n = n + Math.random()*10|0;  
        if(n>100){
          n = 100;
          clearInterval(timer);
          othis.removeClass(DISABLED);
        }
        layui.element().progress('demo', n+'%');
      }, 300+Math.random()*1000);
      
      othis.addClass(DISABLED);
    }
  };
  
  $('.site-demo-active').on('click', function(){
    var othis = $(this), type = $(this).data('type');
    active[type] ? active[type].call(this, othis) : '';
  });
});
</script>




</body>
</html>