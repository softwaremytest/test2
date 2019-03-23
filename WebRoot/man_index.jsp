
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<link rel="stylesheet" href="bootstrap3/css/bootstrap.min.css">

<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script
	src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>

<!-- 引入外部样式 -->
<link rel="stylesheet" type="text/css" href="css/test1.css" />
<link rel="stylesheet" type="text/css" href="css/test2.css" />
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">


<!-- Custom styles for this template -->
<link
	href="https://fonts.googleapis.com/css?family=Playfair+Display:700,900"
	rel="stylesheet">
<link href="css/blog.css" rel="stylesheet">
<link href="css/blog-comment.css" rel="stylesheet">
<link href="css/se-footer.css" rel="stylesheet" type="text/css" />
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
</style>


</head>
<body>
	<div style="height: 45px;">
		<%@ include file="Manager/com/header.jsp"%>
	</div>
	<!-- 横行导航栏 -->
	<div class="top-container container">
		<!--导航栏wrapper一般设置一个固定大小这样子可以通过margin:auto;实现导航栏水平居中
     由于顶层容器是适应浏览器变化宽度，所以可以保持水平导航栏自适应浏览器窗口宽度保持居中-->
		<div class="top-wrapper wrapper">
			<!--这个是普通导航栏的容器，就是除了"立即登陆"和"注册新账号"-->
			<div class="nav top-left-nav">
				<!--开始实现列表-->
				<ul>
					<li class="first-nav" style="position:relative;left:50px;width:300px;"><span><a href="sup_man.jsp">厂商管理</a>
					</span></li>
					<li class="first-nav" style="position:relative;left:50px;width:300px;"><span><a
							href="vending.jsp">销售商管理</a> </span></li>
					<li class="dropdown first-nav" style="position:relative;left:50px;width:300px;"><span><a
							href="buyer.jsp">买家管理</a> </span></li>
					<li class="dropdown  first-nav" style="position:relative;left:50px;width:300px;"><span> <a
						href="messages/messages.jsp">消息中心</a><i class="icon icon-arrow"></i>
				</span>
					<ul class="sec-nav">
						<li><a href="messages/messages.jsp">站内信</a></li>
						<li><a href="#">垃圾箱</a></li>
						<li><a href="messages/mes_terrace.jsp">系统消息</a></li>
						<li><a href="#">最新公告</a></li>
						<li><a href="messages/messages.jsp">拒付通知</a></li>
						<li><a href="#">仲裁通知</a></li>
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
			style="position: relative; top: 20px; height: 600px">

		</div>

	</c:if>
	<%@ include file="components/footer.jsp"%>