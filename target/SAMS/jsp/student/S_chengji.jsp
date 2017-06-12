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
      <th>学生编号</th>
      <th>学生姓名</th>
      <th>课程编号</th>
      <th>成绩</th>
    </tr> 
  </thead>
  <tbody>
    <tr>
      <td>001</td>
      <td>张三</td>
      <td>01</td>
      <td>90</td>
    </tr>
    <tr>
      <td>002</td>
      <td>李四</td>
      <td>02</td>
      <td>80</td>
    </tr>
   
  </tbody>
</table>   


<div style="float:right">
     <a href="S_index.jsp" class="layui-btn" target="_blank">返回主界面</a>
     </div>
</fieldset>

</body>
</html>