<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>学生成绩管理系统</title>
<style type="text/css">
<!--
	
#box {
	width:100%;
	text-align:center;
	background-repeat:no-repeat;
}
	#line1 {
		background-color:#C2C2C2;
		height:3px;
		width:910px;
		margin-left:200px;
	}
	#box1 {
		width:800px;
		height:155px;
		margin-left:450px;
		margin-top:1px;
	}
		
	#line2 {
		background-color:#C2C2C2;
		height:3px;
		width:910px;
		margin-left:200px;
		margin-top:1px;
	}
#biaoqian {
	width:auto;
	float:left;
	margin-bottom:0px;
}
.biaoti{
	font-size:24px;
	color:#999;
	
	}
.font1 {
	font-size:10px;
	color:#CCC;
	}
#left_box {
	height:100px;
	margin-top:260px;
	margin-left:50px;
}
a:visited {
	color: #CCCCCC;
	text-decoration: none;
}
a:hover {
	color: #CCCCCC;
	text-decoration: none;
}
a:active {
	color: #CCCCCC;
	text-decoration: none;
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

<fieldset > 
<legend>个人资料设置</legend> 
<table width=100% > 
<tbody> 
<tr ><td class=“left” width=40% align="right"><label for="t1">学 号：</label></td> 
<td class="right" align="left"><input type="text" id="t1" xuehao="XueHao"></td> 
</tr> 
<tr ><td class=“left” width=40% align="right"><label for="t1">姓 名：</label></td> 
<td class="right" align="left"><input type="text" id="t1" name="Name"></td> 
</tr> 
<tr><td class=“left” width=40% align="right"><label for="e1">年 龄：</label></td> 
<td class="right" align="left"><input type="text" id="e1" age="Age" ></td> 
</tr> 

<tr><td class=“left” width=40% align="right"><label for="1">性 别：</label></td> 
<td class="right" align="left"><input type="radio" id="1" name="ssex" value="nan" />男<!-- name设置成一样的就行了--> 
<input type="radio" id="2" name="ssex" value="nv" />女
</td> 

<tr ><td class=“left” width=40% align="right"><label for="t1">班 级：</label></td> 
<td class="right" align="left"><input type="text" id="t1" name="Name"></td> 
</tr> 
<tr ><td class=“left” width=40% align="right"><label for="t1">年 级：</label></td> 
<td class="right" align="left"><input type="text" id="t1" name="Name"></td> 
</tr> 

<tr ><td class=“left” width=40% align="right"><label for="t1">分 数：</label></td> 
<td class="right" align="left"><input type="text" id="t1" name="Name"></td> 
</tr> 
<tr><td class=“left” width=40% align="right" rowspan=2> 
<input id="Submit1" type="submit" value="提 交" /> 



</td> 
<td align="left"> <input id="Reset1" type="reset" value="重 置" /> 
</td> 
<div id="chongzhi"><a href="S_install.jsp">重 置</a></div>
</tr> 
</tbody> 
</table> 
</fieldset> 
</form> 
</div> 
  
  <div id="line2"></div>

</div>

</body>
</html>
