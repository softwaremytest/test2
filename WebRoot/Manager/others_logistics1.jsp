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
<script>
	function change(obj) {
		alert('该店铺通过审核');
		var divDemo = document.getElementById("b");
		if (obj.value == "通过") {
			divDemo.style.color = "#cccc00";
		}

	}
</script>

</head>
<body>
	<div style="height: 45px;">
		<%@ include file="com/header.jsp"%>
	</div>
	<!-- 顶部导航栏 -->
	<%@ include file="com/nav3.jsp"%>
	<!-- 内容 -->
	<c:if test="${  empty User}">
		<div class="container"
			style="position: relative; top: 20px; height: 600px">
			<p style="font-size: 18px; font-weight: bold;">请先登录</p>

		</div>

	</c:if>
	<c:if test="${not  empty User}">
		<div class="container" style="position: relative; top: 20px;height: 550px">
			<!-- 列表组 -->
			<div class="row">
				<!-- 左边栏 -->
				<div class="col-md-3" style="left: 35px;">
					<div class="list-group" id="shu-daohanglan" style="width: 200px;">
						<a href="others.jsp" class="list-group-item"
							id="shu-daohanglan-title"
							style="font-size: 18px; font-weight: bold;">其他管理 </a> <a
							href="others.jsp" class="list-group-item"
							 style="color: #000000;">店铺管理</a> <a
							href="others_product.jsp" class="list-group-item"
							style="color: #000000;">产品管理</a> <a href="others_logistics.jsp"
							class="list-group-item"style="background: #F5F5F5; color: #EE7621;">物流管理</a>
						<a href="others_others.jsp"
							class="list-group-item" style="color: #000000;">多平台订单导入</a>
						<a href="others_others.jsp"
							class="list-group-item" style="color: #000000;">支付管理</a>
					</div>


				</div>
				<!-- 右边栏 -->
				<div class="col-md-9">
					<!-- 页面名称 -->
					<div>
						<p style="font-size: 18px; font-weight: bold;">物流信息</p>
					</div>
					<!-- 搜索 -->
					<div class="panel-body">
						<p style="color: red"></p>

							<div class="form-group"
								style="position: relative; top: -10px; background: #ffffff;width:540px; height: 50px;">

								<div class="col-sm-2"
									style="width: 400px; left: 0px; top: 10px;">
									<input type="text" class="form-control" id="text1"
										name="OrderId" pattern="" placeholder="订单号">

								</div>
								<div class="col-sm-2"
									style="width: 100px; left: 20px; top: 10px;">
									<input type="submit" value="搜索" class="btn btn-default"
										style="background: #EE2C2C; color: #ffffff" />
								</div>
							</div>

					</div>
					<div style="width: 120px;height:400px;position: relative; left: 0px; top: -20px;">
				     <img src="../img/w2.jpg" style="height:400px;width:500px;"/>
				    </div>
				</div>
			</div>

		</div>
	</c:if>
	<%@ include file="../components/footer.jsp"%>