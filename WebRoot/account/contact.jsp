<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>联系人设置</title>
<!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet" href="../bootstrap3/css/bootstrap.min.css">

<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script
	src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>

<!-- 引入外部样式 -->
<link rel="stylesheet" type="text/css" href="../css/test1.css" />
<link rel="stylesheet" type="text/css" href="../css/test2.css" />
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">


    <!-- Custom styles for this template -->
    <link href="https://fonts.googleapis.com/css?family=Playfair+Display:700,900" rel="stylesheet">
    <link href="../css/blog.css" rel="stylesheet">
    <link href="../css/blog-comment.css" rel="stylesheet">

<style>
body {
	background: #F5F5F5;
}

a {
	text-decoration: none;
}

a:link {
	text-decoration: none;
}

a:visited {
	text-decoration: none;
}

a:hover {
	text-decoration: none;
}

a:active {
	text-decoration: none;
}

#but {
	margin: 0;
	padding: 0;
	border: 0px none transparent;
	outline: none;
}

#shu-daohanglan-title {
	font-size: 18px;
	font-weight: bold;
	color: #000000
}

#shu-daohanglan a:hover {
	color: #EE7621;
}


</style>

<!-- 1.引入 echarts.js -->
<script type="text/javascript" src="../echarts/echarts.js"></script>
<!-- 引入jquery.js -->
<script type="text/javascript" src="../jquery-3.3.1/jquery-3.3.1.min.js"></script>
</head>
<body>
	<div  style="height:45px;">
		<%@ include file="../components/header.jsp"%>
	</div>
	<!-- 顶部导航栏 -->
	<%@ include file="../components/acc_top.jsp"%>
	<!-- 内容 -->
	<div class="container" style="position: relative; top: 20px">
		<!-- 列表组 -->
		<div class="row">
			<!-- 左边栏 -->
			<div class="col-md-3" style="left: 35px;">
				<div class="list-group" id="shu-daohanglan" style="width: 200px;">
					<a href="../account/account.jsp" class="list-group-item"
						id="shu-daohanglan-title"
						style="font-size: 18px; font-weight: bold;">账号及认证 </a> <a
						href="../account/account.jsp" class="list-group-item"
						style="color: #000000;">账号设置</a> <a href="../account/contact.jsp"
						class="list-group-item"
						style="background: #F5F5F5; color: #EE7621;">联系人设置</a> <a href="#"
						class="list-group-item" style="color: #000000;">年费发票</a>

				</div>
				<div class="list-group" id="shu-daohanglan" style="width: 200px;">
					<a href="../messages/mes_terrace.jsp" class="list-group-item"
						id="shu-daohanglan-title"
						style="font-size: 18px; font-weight: bold;">品牌商标 </a> <a
						href="../messages/mes_terrace.jsp" class="list-group-item"
						style="color: #000000;">我的申请</a> <a
						href="https://eipr.taobao.com/#/" class="list-group-item"
						style="color: #000000;">商标注册(注册新商标)</a> <a
						href="https://reg.taobao.com/member/activation/activation.htm"
						class="list-group-item" style="color: #000000;">商标添加(添加平台没有的商标)</a>
					<a href="#" class="list-group-item" style="color: #000000;">商标资质申请</a>
				</div>


			</div>
			<!-- 右边栏 -->
			<div class="col-md-9">
				<!-- 页面名称 -->
				<div>
					<p style="font-size: 18px; font-weight: bold;">联系人设置</p>
				</div>
				<div
					style="background: #FFF; width: 750px; height: 100px; border: 1px solid #F00; padding: 10px 0px 10px 25px;">
					<p style="font-size: 13px;">1、平台、小二有重要消息时会通过此联系人通知到厂商;</p>
					<p style="font-size: 13px;">2、默认联系人是系统自动联系的首要联系人;</p>
					<p style="font-size: 13px;">3、邮箱需要验证通过才能保证一定能够受到邮件通知;</p>
				</div>
				<div class="panel-body">
					<p style="color: red">${error}</p>
						<div class="col-sm-2"
							style="width: 80px; left: -28px; top: -5px;">
							<a href="../addcon.jsp"><button type="submit" class="btn btn-default"
								style="background: #EE2C2C; color: #ffffff">新增联系人</button></a>
						</div>

				</div>
				<div  style="background: #FFF; width: 500px; height: 60px; padding: 10px 0px 10px 25px;">
					<div style="width:200px;font-size:18px;float:left;margin:5px 20px 0px 0px;">${User.realname}</div>
					<div style="float:left;margin:5px 0px 0px 0px;background:#FFA500;padding: 3px;">默认联系人</div>
				</div>
				<div style="background: #FFF; color: #000; padding: 10px;width:500px;height:260px;">
				
					<table style="margin:0px 0px 0px 25px;">
						<tr>
							<td width="50" height="35">职位</td>
							<th width="100" height="35">老板</th>			
						</tr>
						<tr>
							<td width="50" height="35">手机</td>
							<th width="100" height="35">${User.phone}</th>			
						</tr>
						<tr>
							<td width="50" height="35">座机</td>
							<th width="100" height="35"></th>			
						</tr>
						<tr>
							<td width="50" height="35">邮箱</td>
							<th width="50" height="35">${User.account}</th>			
						</tr>
						<tr>
							<td width="50" height="35">备注</td>
							<th width="100" height="35"></th>			
						</tr>
					</table>
					<div class="col-sm-2"
							style="width: 120px; left: 10px; top: 45px;"><a href="#" >编辑</a></div>
				</div>
			</div>

		</div>
	</div>

	<%@ include file="../components/footer.jsp"%>