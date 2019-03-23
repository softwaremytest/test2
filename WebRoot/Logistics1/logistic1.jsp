<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>物流信息</title>
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
		<%@ include file="../components1/header.jsp"%>
	</div>
	<!-- 顶部导航栏 -->
	<%@ include file="../components1/lo_top.jsp"%>
	<!-- 内容 -->
	<div class="container" style="position: relative; top: 20px">
		<!-- 列表组 -->
		<div class="row">
			<!-- 左边栏 -->
			<div class="col-md-3" style="left: 35px;">
				<div class="list-group" id="shu-daohanglan" style="width: 200px;">
					<a href="../Logistics1/logistic.jsp" class="list-group-item"
						id="shu-daohanglan-title"
						style="font-size: 18px; font-weight: bold;">物流管理 </a> 
			
					<a href="../Logistics1/logistic.jsp" class="list-group-item"
						style="background: #F5F5F5; color: #EE7621;">物流信息</a> 

				</div>
				<div style="height:280px"></div>


			</div>
			<!-- 右边栏 -->
			<div class="col-md-9">
				<!-- 页面名称 -->
				<div>
					<p style="font-size: 18px; font-weight: bold;">物流信息</p>
				</div>
				<div  style="width: 200px; position: relative;left: 0px; top: 8px;">
								<input type="text" class="form-control" id="text1"
										name="OrderId" pattern="" placeholder="订单号">
				</div>
				<div style="width: 120px; position: relative;left: 240px; top: -25px;">
								<button type="submit" class="btn btn-default"
									style="background: #EE2C2C; color: #ffffff">搜索</button>
				</div>
				<div style="width: 120px;position: relative; left: -15px; top: 8px;">
				     <img src="../img/w2.jpg" style="height:400px;width:500px;"/>
				</div>
				<div style="height:20px;"></div>
			</div>

		</div>
	</div>

	<%@ include file="../components1/footer.jsp"%>