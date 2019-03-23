<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>管理员</title>
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
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">


<!-- Custom styles for this template -->
<link
	href="https://fonts.googleapis.com/css?family=Playfair+Display:700,900"
	rel="stylesheet">
<link href="../css/blog.css" rel="stylesheet">
<link href="../css/blog-comment.css" rel="stylesheet">
<link href="../css/se-footer.css" rel="stylesheet" type="text/css" />
<script>
	function control(obj) {
		var divDemo = document.getElementById('divDemo');
		if (obj.value == "展开详情") {
			divDemo.style.height = "auto";
			divDemo.style.overflow = "auto";
			obj.value = "收起详情";
		} else {
			divDemo.style.height = 150 + "px";
			divDemo.style.overflow = "hidden";
			obj.value = "展开详情";
		}
	}
</script>
<style>
body {
	background: #F5F5F5;
}

a {
	text-decoration: none;
	color: #333333;
}

a:link {
	text-decoration: none;
}

a:visited {
	text-decoration: none;
}

a:hover {
	text-decoration: none;
	color: #ff0000;
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
#divDemo {
	width: 750px;
	height: 150px;
	overflow: hidden;
}
</style>


</head>
<body>
	<div style="height: 45px;">
		<%@ include file="com/header.jsp"%>
	</div>
	<div class="top-container container">
		<!--导航栏wrapper一般设置一个固定大小这样子可以通过margin:auto;实现导航栏水平居中
     由于顶层容器是适应浏览器变化宽度，所以可以保持水平导航栏自适应浏览器窗口宽度保持居中-->
		<div class="top-wrapper wrapper">
			<!--这个是普通导航栏的容器，就是除了"立即登陆"和"注册新账号"-->
			<div class="nav top-left-nav">
				<!--开始实现列表-->
				<ul>
					<li class="first-nav" style="position:relative;left:50px;width:240px;"><span><a href="sup_man.jsp">供应商管理</a>
					</span></li>
					<li class="first-nav" style="position:relative;left:50px;width:240px;"><span><a
							href="vending.jsp">借卖方管理</a> </span></li>
					<li class="dropdown  first-nav" style="position:relative;left:50px;width:240px;"><span> <a
						href="others.jsp">其他管理</a><i class="icon icon-arrow"></i>
				</span>
					<ul class="sec-nav" style="width:240px;">
					<li><a href="others.jsp">店铺管理</a></li>
						<li><a href="others_product.jsp">产品管理</a></li>
						<li><a href="others_logistics.jsp">物流管理</a></li>
						<li><a href="others_others.jsp">多平台订单导入</a></li>
						<li><a href="others_pay.jsp">支付管理</a></li>
					</ul></li>
					<li class="dropdown first-nav" style="position:relative;left:50px;width:240px;background:#FF8C69;"><span><a
							href="account.jsp">个人中心</a> </span></li>
					<li class="dropdown  first-nav" style="position:relative;left:50px;width:240px;"><span> <a
						href="messages.jsp">消息中心</a><i class="icon icon-arrow"></i>
				</span>
					<ul class="sec-nav" style="width:240px;">
					<li><a href="messages.jsp">发布通知</a></li>
						<li><a href="mes_management.jsp">管理通知</a></li>
						<li><a href="mes_examine.jsp">审核</a></li>
					</ul></li>
					
				</ul>
			</div>
		</div>
	</div>
		<!-- 内容 -->
	<c:if test="${  empty User}">
		<div class="container"
			style="position: relative; top: 20px; height: 600px">
			<p style="font-size: 18px; font-weight: bold;">请先登录</p>

		</div>

	</c:if>
	<c:if test="${not  empty User}">
		<div class="container"
			style="position: relative; top: 20px; left:150px;height: 600px">
            <div>
					<p style="font-size: 18px; font-weight: bold;">账户设置</p>
				</div>
				<div id="divDemo"
					style="background: #FFF; color: #000; padding: 10px;">
					<p style="font-size: 18px; font-weight: bold;">基本资料</p>
					<table>
						<tr>
							<th width="100" height="35">帐号：</th>
							<td width="100" height="35">${User.account}</td>
						</tr>
						<tr>
							<th width="100" height="35">个人资料：</th>
							<td width="100" height="35"><a href="../modify.jsp">编辑</a></td>
						</tr>
						<tr>
							<th width="100" height="35">实名认证</th>
							<td width="100" height="35">(已认证)</td>
							<td><input type="button" value="展开详情" class="but"
								style="color: red;" onclick="control(this)" /></td>
						</tr>
						<tr>
							<th width="100" height="35">认证姓名:</th>
							<td width="100" height="35">${User.realname}</td>
						</tr>
						<tr>
							<th width="100" height="35">认证类型:</th>
							<td width="100" height="35">身份证</td>
						</tr>
						<tr>
							<th width="100" height="35">证件号码:</th>
							<td width="100" height="35">${User.idNum}</td>
						</tr>
					</table>
				</div>
				<div style="height: 18px; width: 750px;"></div>
				<div
					style="background: #FFF; color: #000; padding: 10px; width: 750px; height: 90px;">
					<p style="font-size: 18px; font-weight: bold;">安全中心</p>
					<table style="margin: 0px 0px 0px 25px;">
						<tr>
							
							<th width="100" height="35"><a href="../modify.jsp" style="font-size: 13px;">修改手机号码</a></th>
							<th width="100" height="35"><a href="../modify.jsp" style="font-size: 13px;">修改登录密码</a></th>
							<th width="100" height="35"><a href="../modify.jsp" style="font-size: 13px;">管理安全问题</a></th>
						</tr>

					</table>
				</div>
		</div>

	</c:if>
	<%@ include file="../components/footer.jsp"%>