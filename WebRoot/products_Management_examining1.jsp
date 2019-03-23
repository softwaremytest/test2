<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="zh-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>借卖通</title>

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
		<%@ include file="../components1/header1.jsp"%>
	</div>

	<!-- 顶部导航栏 -->
	<%@ include file="nav1.jsp"%>

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
						href="products_Release1.jsp" class="list-group-item">发布产品</a> <a href="#"
						class="list-group-item" style="background: #F5F5F5;color:#EE7621;">管理产品</a>
					<a href="#" class="list-group-item">经营范围管理</a> <a href="#"
						class="list-group-item">图片管理</a> <a href="#"
						class="list-group-item">管理搭配套餐</a>
				</div>

			</div>

			<!-- 右边栏 -->
			<div class="col-md-9" style="left:-80px;">

				<!-- 页面名称 -->
				<div>
					<p style="font-size:18px;font-weight:bold;">产品管理 - 已下架</p>
				</div>

				<!-- 分类 -->
				<div>
					<div class="test2-cgx" style="">
						<a href="#" style="">草稿箱(0)</a>
					</div>
					<div class="test2-cgx" style="margin-left:3px;background:#EE2C2C;">
						<a href="#" style="color:#ffffff;">审核中(1)</a>
					</div>
					<div class="test2-cgx" style="margin-left:3px">
						<a href="#" style="">审核不通过(0)</a>
					</div>
					<div class="test2-cgx" style="margin-left:3px;">
						<a href="G_yixiajiaGetall" style="">已下架(0)</a>
					</div>
					<div class="test2-cgx" style="margin-left:3px;">
						<a href="#" style="">正在销售(0)</a>
					</div>
				</div>

				<!-- 红线 -->
				<div
					style="background:#ff0000;width:1000px;height:2px;top:40px;position:relative;"></div>

				<!-- 内容 -->
				<div
					style="background:#ffffff;width:1000px;height:1000px;position:relative;top:60px;">

					<!-- 搜索 -->
					<div class="panel-body">
						<p style="color:red">${error}</p>
						<form class="form-horizontal" id="form1" name="form1"
							method="post" action="LoginAction">

							<div class="form-group"
								style="left:-510px;top:-10px;position:relative;">
								<div class="col-sm-2" style="width:200px;left:0px;">
									<input type="text" class="form-control" id="text1"
										name="userName" pattern="" placeholder="产品名称或ID(可选)">
								</div>
								<div class="col-sm-2" style="width:200px;left:0px;">
									<input type="text" class="form-control" id="text2"
										name="userName" pattern="" required="required"
										placeholder="产品编码(可选)">
								</div>
							</div>

							<div class="form-group" style="position:relative;top:-10px;">
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
										<option value="产品类型">产品下架原因</option>
										<option value="全部类型">全部原因</option>
										<option value="淘代销产品">手动下架</option>
										<option value="普通产品">到期下架</option>
										<option value="产品类型">交易违规下架</option>
										<option value="全部类型">降级下架</option>
										<option value="淘代销产品">未续约下架</option>
									</select>
								</div>
								<div class="col-sm-2" style="width:120px;left:-20px;">
									<select class="form-control" name="zhou">
										<option value="产品类型">库存量</option>
										<option value="全部类型">全部</option>
										<option value="淘代销产品">有货</option>
										<option value="普通产品">无货</option>
									</select>
								</div>
								<div class="col-sm-2" style="width:150px;left:-20px;">
									<button type="submit" class="btn btn-default"
										style="background:#EE2C2C;color:#ffffff">搜索</button>
								</div>
							</div>

						</form>
					</div>


					<!-- 黑线 -->
					<div
						style="background:#DCDCDC;width:975px;height:1px;top:-20px;left:15px;position:relative;"></div>

					<!-- 批量操作 -->
					<div class="test2-shanchu">
						<a href="#">删除 |</a> <a href="#">分配负责人 |</a> <a href="#">调整产品组
							|</a> <a href="#">批量修改 |</a> <a href="#">批量上架</a>
					</div>

					<!-- 列表标题栏 -->
					<div
						style="height:40px;background:#F5F5F5;margin-left:15px;margin-right:15px;padding-top:10px;">

						<div style="float:left;margin-left:20px;font-size:14px;">
							<input type="checkbox">
						</div>

						<div style="float:left;margin-left:20px;">
							<p>产品标题</p>
						</div>

						<!-- Single button -->
						<div class="btn-group"
							style="float:left;margin-top:-5px;margin-left:193px;">
							<button type="button" class="btn btn-default dropdown-toggle"
								data-toggle="dropdown" aria-haspopup="true"
								aria-expanded="false"
								style="background:#F5F5F5;border:none;font-size:14px;">
								品牌 <span class="caret"></span>
							</button>
							<ul class="dropdown-menu">
								<li><a href="#">全部</a></li>
								<li><a href="#">其他</a></li>
								<li><a href="#">none(无品牌)</a></li>
							</ul>
						</div>

						<div style="float:left;margin-left:14px;">
							<p>售价(USD)</p>
						</div>

						<div style="float:left;margin-left:119px;">
							<p>库存</p>
						</div>

						<!-- Single button -->
						<div class="btn-group"
							style="float:left;margin-top:-5px;margin-left:50px;">
							<button type="button" class="btn btn-default dropdown-toggle"
								data-toggle="dropdown" aria-haspopup="true"
								aria-expanded="false"
								style="background:#F5F5F5;border:none;font-size:14px;">
								运费模板<span class="caret"></span>
							</button>
							<ul class="dropdown-menu">
								<li><a href="#">新手运费模板</a></li>
								<li><a href="#">ALL</a></li>
								<li><a href="#">MSE</a></li>
							</ul>
						</div>

						<!-- Single button -->
						<div class="btn-group"
							style="float:left;margin-top:-5px;margin-left:20px;">
							<button type="button" class="btn btn-default dropdown-toggle"
								data-toggle="dropdown" aria-haspopup="true"
								aria-expanded="false"
								style="background:#F5F5F5;border:none;font-size:14px;">
								下架原因 <span class="caret"></span>
							</button>
							<ul class="dropdown-menu">
								<li><a href="#">手动下架</a></li>
								<li><a href="#">到期下架</a></li>
								<li><a href="#">交易违规下架</a></li>
								<li><a href="#">降级下架</a></li>
								<li><a href="#">未续约下架</a></li>
							</ul>
						</div>

						<div style="float:left;margin-left:50px;">
							<p>操作</p>
						</div>

					</div>

					<!-- Table -->
					<table class="table" style="">
						<thead>
						</thead>
						<tbody>
							<tr>
								<td style="padding-left:35px;width:50px;"><input
									type="checkbox"></td>
								<td><img src="img/product/product01.jpg"
									style="width:30px;height:30px;" /></td>
								<td class="test2-liebiao"><a href="#">The spring of
										2016 the new children's clothing 2-3 years old female baby
										spring girls long-sleeved dress princess dress baby</a>
								</td>
								<td
									style="width:100px;padding-left:10px;font-size:12px;">未分配
								</td>
								<td
									style="width:200px;padding-left:0px;font-size:14px;">10.00</td>
								<td
									style="width:100px;padding-left:0px;font-size:14px;">10000</td>
								<td
									style="width:125px;padding-left:0px;font-size:12px;">新手运费模板</td>
								<td
									style="width:125px;padding-left:0px;font-size:12px;">交易违规夏季</td>
								<td style="width:100px;"><div
										class="btn-group"
										style="margin-top:0px;margin-left:0px;">
										<button type="button" class="btn btn-default dropdown-toggle"
											data-toggle="dropdown" aria-haspopup="true"
											aria-expanded="false"
											style="font-size:12px;">
											操作 <span class="caret"></span>
										</button>
										<ul class="dropdown-menu">
											<li><a href="#">上架</a></li>
											<li><a href="#">调整产品组</a></li>
											<li><a href="#">删除</a></li>
										</ul>
									</div></td>
							</tr>
							<tr>
								<td style="padding-left:35px;width:50px;"><input
									type="checkbox"></td>
								<td><img src="img/product/product01.jpg"
									style="width:30px;height:30px;" /></td>
								<td class="test2-liebiao"><a href="#">The spring of
										2016 the new children's clothing 2-3 years old female baby
										spring girls long-sleeved dress princess dress baby</a>
								</td>
								<td
									style="width:100px;padding-left:10px;font-size:12px;">未分配
								</td>
								<td
									style="width:200px;padding-left:0px;font-size:14px;">10.00</td>
								<td
									style="width:100px;padding-left:0px;font-size:14px;">10000</td>
								<td
									style="width:125px;padding-left:0px;font-size:12px;">新手运费模板</td>
								<td
									style="width:125px;padding-left:0px;font-size:12px;">交易违规夏季</td>
								<td style="width:100px;"><div
										class="btn-group"
										style="margin-top:0px;margin-left:0px;">
										<button type="button" class="btn btn-default dropdown-toggle"
											data-toggle="dropdown" aria-haspopup="true"
											aria-expanded="false"
											style="font-size:12px;">
											操作 <span class="caret"></span>
										</button>
										<ul class="dropdown-menu">
											<li><a href="#">上架</a></li>
											<li><a href="#">调整产品组</a></li>
											<li><a href="#">删除</a></li>
										</ul>
									</div></td>
							</tr>
							
							<c:forEach items="${dmList }" var="dm">
							<tr>
								<td style="padding-left:35px;width:50px;"><input
									type="checkbox"></td>
								<td><img src="img/product/product01.jpg"
									style="width:30px;height:30px;" /></td>
								<td class="test2-liebiao"><a href="#">${dm.cpbt}</a>
								</td>
								<td
									style="width:100px;padding-left:10px;font-size:12px;">${dm.cpz}
								</td>
								<td
									style="width:200px;padding-left:0px;font-size:14px;">${dm.sj}</td>
								<td
									style="width:100px;padding-left:0px;font-size:14px;">${dm.kc}</td>
								<td
									style="width:125px;padding-left:0px;font-size:12px;">${dm.yfmb}</td>
								<td
									style="width:125px;padding-left:0px;font-size:12px;">${dm.xjyy}</td>
								<td style="width:100px;"><div
										class="btn-group"
										style="margin-top:0px;margin-left:0px;">
										<button type="button" class="btn btn-default dropdown-toggle"
											data-toggle="dropdown" aria-haspopup="true"
											aria-expanded="false"
											style="font-size:12px;">
											操作 <span class="caret"></span>
										</button>
										<ul class="dropdown-menu">
											<li><a href="#">上架</a></li>
											<li><a href="#">调整产品组</a></li>
											<li><a href="#">删除</a></li>
										</ul>
									</div></td>
							</tr>
							</c:forEach>

						</tbody>
					</table>


				</div>



			</div>


		</div>
	</div>


	<%@ include file="components1/footer.jsp"%>
