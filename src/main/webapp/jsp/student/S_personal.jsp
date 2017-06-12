<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>学生成绩管理系统</title>
<style type="text/css">
<!--

	#head {
		width:100%;
		height:360px;
	}
	#left {
		float:left;
		width:450px;
		height:360px;
	
#xiugai{
	color:#CCC;
	font-size:24px;
	width:100px;
	margin-left: auto;
	margin-right: auto;
	background-color:#333;
	}
	#xiugai:hover{
		background-color:#222}
a:link {
	color: #CCCCCC;
	text-decoration: none;
}
a:visited {
	text-decoration: none;
	color: #CCCCCC;
}
a:hover {
	text-decoration: none;
	color: #CCCCCC;
}
a:active {
	text-decoration: none;
	color: #CCCCCC;
}


-->
</style>
<script type="text/javascript">
function MM_swapImgRestore() { //v3.0
  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
}
function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}

function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}

function MM_swapImage() { //v3.0
  var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
   if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
}
</script>
</head>

 
  <div id="line1"></div>
  <div id="box3">
  
	<table width="40%" border="0" align="center";>
	  <tr>
    <td>学号:</td>
    <td>15610612150923</td>
  </tr>
  <tr>
    <td>姓名：</td>
    <td>张三</td>
  </tr>
  <tr>
    <td>年龄：</td>
    <td>20</td>
  </tr>
  <tr>
    <td>性别:</td>
    <td>男</td>
  </tr>
  <tr>
    <td>班级：</td>
    <td>软件三班</td>
  </tr>
  <tr>
    <td>年级：</td>
    <td>2015级</td>
  </tr>
  <tr>
    <td>分数：</td>
    <td>408.5</td>
  </tr>
  
</table></div>
<div id="xiugai"><a href="S_install.jsp">修改资料</a></div>

  <div id="line2"></div>

</div>

</body>
</html>
