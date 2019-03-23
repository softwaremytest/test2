<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<html lang="zh-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>味全</title>

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
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">


    <!-- Custom styles for this template -->
    <link href="https://fonts.googleapis.com/css?family=Playfair+Display:700,900" rel="stylesheet">
    <link href="css/blog.css" rel="stylesheet">
    <link href="css/blog-comment.css" rel="stylesheet">


<style>
body {
	background: #F5F5F5;
}
#shu-daohanglan-title{
   font-size:18px;font-weight:bold;color:#000000
}
#shu-daohanglan a:hover{
	color: #EE7621;
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
</style>

</head>

<body>

	<div  style="height:45px;">
		<%@ include file="../components/header1.jsp"%>
	</div>

	<!-- 顶部导航栏 -->
	<%@ include file="nav.jsp"%>
	<!-- 内容 -->
	<div class="container" style="position:relative;top:50px">
		<!-- 列表组 -->
		<div class="row">

			<!-- 左边栏 -->
			<div class="col-md-3" style="left:-35px;">


				<div class="list-group" id="shu-daohanglan" style="width:200px;">
					<a href="#" class="list-group-item" id="shu-daohanglan-title"
						style="font-size:18px;font-weight:bold;">产品信息 </a> <a href="#"
						class="list-group-item" style="background: #F5F5F5;color:#EE7621;">发布产品</a>
					<a href="products_Management.jsp" class="list-group-item">管理产品</a> <a href="#"
						class="list-group-item">经营范围管理</a> <a href="#"
						class="list-group-item">图片管理</a> <a href="#"
						class="list-group-item">管理搭配套餐</a>
				</div>





			</div>

			<!-- 右边栏 -->
			<div class="col-md-9">
				<div class="panel panel-default">
					<div class="panel-heading">用户登录</div>
					<div class="panel-body">
						<p style="color:red">${error}</p>
						<form class="form-horizontal" id="form1" name="form1"
							method="post" action="LoginAction">
							<div class="form-group">
								<label for="inputEmail3" class="col-sm-2 control-label">用户名</label>
								<div class="col-sm-9">
									<input type="text" class="form-control" id="text1"
										name="userName" pattern="[a-Z0-9]{2,10}" required="required"
										placeholder="请输入用户名">
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>


		</div>
	</div>


	<!-- 树形导航栏 -->


</body>
</html>
