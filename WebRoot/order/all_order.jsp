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
<title>所有订单</title>
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
<script type="text/javascript" src="../My97DatePicker/WdatePicker.js"></script>
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
		<%@ include file="../components/header.jsp"%>
	</div>
	<!-- 顶部导航栏 -->
	<%@ include file="../components/order_top.jsp"%>
	<!-- 内容 -->
	<div class="container" style="position: relative; top: 20px">
		<!-- 列表组 -->
		<div class="row">
			<!-- 左边栏 -->
			<div class="col-md-3" style="left: 35px;">
				<div class="list-group" id="shu-daohanglan" style="width: 200px;">
					<a href="../order/all_order.jsp" class="list-group-item"
						id="shu-daohanglan-title"
						style="font-size: 18px; font-weight: bold;">订单管理</a> <a
						href="../order/all_order.jsp" class="list-group-item"
						style="background: #F5F5F5; color: #EE7621;">所有订单</a> <a
						href="../order/all_order.jsp" class="list-group-item"
						style="color: #000000;">退款&纠纷</a> <a href="#"
						class="list-group-item" style="color: #000000;">订单批量导出</a>

				</div>


			</div>
			<!-- 右边栏 -->
			<div class="col-md-9">
				<!-- 页面名称 -->
				<div>
					<p style="font-size: 18px; font-weight: bold;">我的订单</p>
				</div>
				<div style="background: #fff; height: 120px; width: 800px;">
					<div style="height: 40px;">
						<p
							style="font-size: 12px; color: #B7B7B7; position: relative; top: 18px; left: 120px;">特别关注:</p>
						<p
							style="font-size: 11px; position: relative; left: 210px; top: -8px;">
							<a href="#">今日新订单(10)</a>
						</p>
					</div>
					<div
						style="background: #836FFF; width: 750px; height: 1px; top: 0px; left: 20px; position: relative;"></div>
					<div style="height: 40px; width: 800px;">
						<p
							style="font-size: 12px; color: #B7B7B7; position: relative; top: 2px; left: 120px;">等待操作:</p>
						<p
							style="font-size: 11px; position: relative; left: 210px; top: -25px;">
							<a href="#">等待发货(24)</a>
						</p>
						<p
							style="font-size: 11px; position: relative; left: 320px; top: -50px;">
							<a href="#">买家申请取消订单(0)</a>
						</p>
						<p
							style="font-size: 11px; position: relative; left: 210px; top: -55px;">
							<a href="#">有纠纷的订单(0)</a>
						</p>
					</div>
					<div
						style="background: #836FFF; width: 750px; height: 1px; top: 0px; left: 20px; position: relative;"></div>
					<div style="height: 40px; width: 800px;">
						<p
							style="font-size: 12px; color: #B7B7B7; position: relative; top: 2px; left: 62px;">等待买家操作的订单:</p>
						<p
							style="font-size: 11px; position: relative; left: 210px; top: -24px;">
							<a href="#">等待确认收货订单(2)</a>
						</p>
					</div>
				</div>
				<div style="background: #F5F5F5; height: 20px; width: 800px;"></div>
				<div style="background: #fff; height: 100px; width: 800px;">
					<p
						style="font-size: 12px; color: #B7B7B7; position: relative; top: 20px; left: 20px;">产品名称:</p>
					<p
						style="font-size: 12px; color: #B7B7B7; position: relative; left: 210px; top: -6px;">订单号:</p>
					<p
						style="font-size: 12px; color: #B7B7B7; position: relative; left: 400px; top: -35px;">下单时间:</p>
					<p
						style="font-size: 12px; color: #B7B7B7; position: relative; left: 20px; top: -18px;">买家名称:</p>
					<p
						style="font-size: 12px; color: #B7B7B7; position: relative; top: -44px; left: 210px;">订单状态:</p>
					<div class="col-sm-2"
						style="width: 150px; left: 455px; top: -120px;">
						<input name="createdatetimeStart" style="width: 150px;"
							onFocus="WdatePicker({readOnly:true,dateFmt:'yyyy-MM-dd HH:mm:ss'})"
							placeholder="yyyy-MM-dd HH:mm:ss" />
					</div>
					<div class="col-sm-2"
						style="color: #B7B7B7; width: 100px; left: 460px; top: -115px;">
						<p style="font-size: 12px;">至</p>
					</div>
					<div class="col-sm-2"
						style="width: 150px; left: 380px; top: -120px;">
						<input name="createdatetimeEnd" style="width: 150px;"
							onFocus="WdatePicker({readOnly:true,dateFmt:'yyyy-MM-dd HH:mm:ss'})"
							placeholder="yyyy-MM-dd HH:mm:ss" />
					</div>
					<input name="ordername"
						style="width: 120px; position: relative; top: -120px; left: -320px;" />
					<input name="orderid"
						style="width: 120px; position: relative; top: -120px; left: -265px;" />
					<input name="buyer"
						style="width: 120px; position: relative; top: -75px; left: -568px;" />
					<input name="state"
						style="width: 120px; position: relative; top: -100px; left: 20px;" />
					<a href="all_order1.jsp"><button type="submit" class="btn btn-default"
						style="background: #EE2C2C; color: #fff; position: relative; top: -100px; left: 50px;">筛选</button></a>
				</div>
				<div style="background: #F5F5F5; height: 20px; width: 800px;"></div>
				<div style="background: #fff; width: 800px;">
					<div style="background: #fff; height: 20px; width: 800px;"></div>
					<div style="background: #C2C2C2; height: 40px; width: 800px;">
						<p
							style="font-size: 14px; position: relative; top: 12px; left: -380px;">订单号</p>
						<p
							style="font-size: 14px; position: relative; left: 140px; top: -17px;">单价</p>
						<p
							style="font-size: 14px; position: relative; left: 230px; top: -48px;">数量</p>
						<p
							style="font-size: 14px; position: relative; left: 330px; top: -78px;">产品</p>
						<p
							style="font-size: 14px; position: relative; top: -108px; left: 470px;">订单状态</p>
						<p
							style="font-size: 14px; position: relative; top: -138px; left: 630px;">下单时间</p>
					</div>
					<div style="background: #fff; width: 800px; ">
						<table id="message-list" style="table-layout: fixed;">
							<thead>
								<tr style="background:#fff;height:30px;">
									<th width="120" align="center">201902170001</th>
									<th width="100" align="center">65.5</th>
									<th width="110" align="center">1</th>
									<th width="150" align="center">鼠标</th>
									<th width="150" align="center">待发货</th>
									<th width="200" align="center">2019-02-17 02:05:16</th>
								</tr>
								<tr style="background:#a9bdd6;height:30px;">
									<th width="120" align="center">201902170002</th>
									<th width="100" align="center">65.5</th>
									<th width="110" align="center">1</th>
									<th width="150" align="center">键盘</th>
									<th width="150" align="center">已发货</th>
									<th width="200" align="center">2019-02-17 12:27:16</th>
								</tr>
								<tr style="background:#fff;height:30px;">
								    <th width="120" align="center">201902170003</th>
									<th width="100" align="center">165.5</th>
									<th width="110" align="center">2</th>
									<th width="150" align="center">摄像头</th>
									<th width="150" align="center">待付款</th>
									<th width="200" align="center">2019-02-17 22:25:36</th>
								</tr>
								<tr style="background:#a9bdd6;height:30px;">
								    <th width="120" align="center">201902180001</th>
									<th width="100" align="center">65.5</th>
									<th width="110" align="center">1</th>
									<th width="150" align="center">鼠标</th>
									<th width="150" align="center">待发货</th>
									<th width="200" align="center">2019-02-18 13:45:16</th>
								</tr>
								<tr style="background:#fff;height:30px;">
									<th width="120" align="center">201902180002</th>
									<th width="100" align="center">65.5</th>
									<th width="110" align="center">1</th>
									<th width="150" align="center">耳机</th>
									<th width="150" align="center">已付款</th>
									<th width="200" align="center">2019-02-18 02:25:16</th>
								</tr>
								<tr style="background:#a9bdd6;height:30px;">
									<th width="120" align="center">201902200001</th>
									<th width="100" align="center">65.5</th>
									<th width="110" align="center">2</th>
									<th width="150" align="center">鼠标</th>
									<th width="150" align="center">已发货</th>
									<th width="200" align="center">2019-02-20 20:25:16</th>
								</tr>
								<tr style="background:#fff;height:30px;">
									<th width="120" align="center">201902240001</th>
									<th width="100" align="center">255</th>
									<th width="110" align="center">1</th>
									<th width="150" align="center">耳机</th>
									<th width="150" align="center">已发货</th>
									<th width="200" align="center">2019-02-24 12:25:16</th>
								</tr>
								<tr style="background:#a9bdd6;height:30px;">
									<th width="120" align="center">201902240002</th>
									<th width="100" align="center">105.5</th>
									<th width="110" align="center">3</th>
									<th width="150" align="center">键盘</th>
									<th width="150" align="center">待发货</th>
									<th width="200" align="center">2019-02-24 17:17:16</th>
								</tr>
							</thead>
						</table>

					</div>
				</div>
			</div>

		</div>
	</div>

	<%@ include file="../components/footer.jsp"%>