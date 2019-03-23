<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="zh-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>发布产品</title>

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
<link rel="stylesheet" type="text/css" href="css/main.css" />
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
<link href="css/se-footer.css" rel="stylesheet" type="text/css" />
<style>
body {
	background: #F5F5F5;

}

#shu-daohanglan-title {
	font-size: 18px;
	font-weight: bold;
	color: #000000
}

#shu-daohanglan a{
 font-size: 14px;
 height:43px;
}

#shu-daohanglan a:hover {
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
	<div class="container" style="position:relative;top:20px">
		<!-- 列表组 -->
		<div class="row">

			<!-- 左边栏 -->
			<div class="col-md-3" style="left:-35px;">

				<!-- 树形导航栏 -->
				<div class="list-group" id="shu-daohanglan" style="width:200px;">
					<a href="#" class="list-group-item" id="shu-daohanglan-title"
						style="font-size:18px;font-weight:bold;">产品信息 </a> <a
						href="products_Release.jsp" class="list-group-item"
						style="background: #F5F5F5;color:#EE7621;">发布产品</a> <a
						href="products_Management.jsp" class="list-group-item">管理产品</a> 
				</div>

			</div>

			<!-- 右边栏 -->
			<div class="col-md-9" style="left:-80px;">

				<!-- 内容  -->
				<div
					style="background:#ffffff;width:1000px;height:700px;padding:15px;margin-bottom:20px;">

					<!-- 页面名称 -->
					<div>
						<p style="font-size:18px;font-weight:bold;">发布产品</p>
					</div>

					<!-- 分类 -->
					<div class="form-group" style="position:relative;top:0px;">
						<div class="btn-group" role="group" aria-label="..."
							style="left:-150px;">
							<button type="button" class="btn btn-default"
								style="background:#778899;color:#ffffff">选择类目</button>
							<button type="button" class="btn btn-default" data-toggle="modal"
								data-target="#exampleModal" data-whatever="@mdo">类似产品导入</button>
						</div>
						<!-- 类似产品导入模态框 -->
						<div class="modal fade" id="exampleModal" tabindex="-1"
							role="dialog" aria-labelledby="exampleModalLabel">
							<div class="modal-dialog" role="document">
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal"
											aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>
										<h4 class="modal-title" id="exampleModalLabel">选择要导入的产品</h4>
									</div>
									<div class="modal-body">
										<form>
											<div class="form-group">
												<div class="col-sm-2" style="width:150px;left:0px;">
													<input type="text" class="form-control" id="text1"
														name="userName" pattern="" placeholder="产品名称">
												</div>
												<div class="col-sm-2" style="width:150px;left:0px;">
													<select class="form-control" name="zhou">
														<option value="产品类型">产品类型</option>
														<option value="全部类型">全部类型</option>
														<option value="淘代销产品">淘代销产品</option>
														<option value="普通产品">普通产品</option>
													</select>
												</div>
												<div class="col-sm-2" style="width:170px;left:-10px;">
													<select class="form-control" name="zhou">
														<option value="产品状态">产品状态</option>
														<option value="正在销售">正在销售</option>
														<option value="已下架">已下架</option>
													</select>
												</div>
												<button type="submit" class="btn btn-default"
													style="background:#EE2C2C;color:#ffffff">搜索</button>
											</div>
											<div class="form-group">
												<textarea class="form-control" id="message-text"></textarea>
											</div>
										</form>
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-default"
											data-dismiss="modal">关闭</button>
										<button type="button" class="btn btn-primary">确认</button>
									</div>
								</div>
							</div>
						</div>

						<div class="col-sm-2" style="width:150px;left:828px;">
							<select class="form-control" name="zhou" style="font-size:10px;">
								<option value="z">中文类目</option>
								<option value="全部类型">English Gategory</option>
							</select>
						</div>
					</div>

					<!-- 黑线 -->
					<div
						style="background:#778899;width:970px;height:2px;top:-10px;position:relative;"></div>

					<div class="form-group" style="margin-left:-15px;">
						<div class="col-sm-4">
							<input type="text" class="form-control" id="text1" name="xm"
								pattern="[a-Z0-9]{1,10}" required="required" placeholder="">
						</div>
						<div class="col-sm-2" style="width:150px;left:-20px;">
							<button type="submit" class="btn btn-default"
								style="background:#EE2C2C;color:#ffffff">查找类目</button>
						</div>
					</div>

					<!-- 类目 -->					
					<%@ include file="products_classification.jsp"%>

				</div>

			</div>

		</div>
	</div>

	<%@ include file="components/footer.jsp"%>
