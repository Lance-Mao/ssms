<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>学生成绩管理系统</title>

<link rel="stylesheet" href="./layui/css/layui.css"  media="all">

</head>
<body>

<fieldset class="layui-elem-field layui-field-title" style="margin-top: 50px;">
  <legend>学生成绩中心</legend>
</fieldset>  
 
<table class="layui-table" lay-skin="line">
  <colgroup>
    <col width="150">
    <col width="150">
    <col width="200">
    <col>
  </colgroup>
  <thead>
    <tr>
      <th>课程编号</th>
      <th>课程名称</th>
      <th>教室</th>
      <th>开课时间</th>
      <th>节课时间</th>
      <th>学分</th>
    </tr> 
  </thead>
  <tbody>
    <tr>
      <td>01</td>
      <td>Java web</td>
      <td>B206教室</td>
      <td>2016年3月25日</td>
      <td>2016年6月25日</td>
      <td>6</td>
    </tr>
    <tr>
      <td>02</td>
      <td>计算机与原理</td>
      <td>B508教室</td>
      <td>2016年3月25日</td>
      <td>2016年6月25日</td>
      <td>8</td>
    </tr>
        <tr>
      <td>03</td>
      <td>软件工程</td>
      <td>B408教室</td>
      <td>2016年3月25日</td>
      <td>2016年6月25日</td>
      <td>6</td>
    </tr>
   
  </tbody>
</table>   


<div style="float:rigth">
     <a href="index.jsp" class="layui-btn" target="_blank">返回主界面</a>
     </div>
</fieldset>

</body>
</html>