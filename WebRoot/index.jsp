<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>我的</title>
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
	color: #B7B7B7;
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
		<%@ include file="../components/header1.jsp"%>
	</div>
	<!-- 顶部导航栏 -->
	<%@ include file="components/index_top.jsp"%>
	<!-- 内容 -->
	<c:if test="${ not empty User}">
	<div class="row">
		<div class="col-md-8 blog-main"
			style="position: relative; top: 20px; width: 1000px; left: 132px;">
			<!-- 页面名称 -->
			<div>
				<p style="font-size: 18px; font-weight: bold;">我的工作台</p>
			</div>
			<div>
				<div
					style="width: 300px; height: 240px; background: #fff; float: left; margin: 10px;">
					<div class="col-sm-2" style="width: 240px; left: 5px; top: 15px;">
						<p style="font-size: 18px; font-weight: bold;">消息</p>
						<p class="col-sm-2"
							style="width: 100px; font-size: 12px; color: #B7B7B7; position: relative; left: 220px; top: -34px;">
							<a href="messages/messages.jsp">全部</a>
						</p>
					</div>
					<p class="col-sm-2"
						style="width: 120px; font-size: 16px; position: relative; left: 6px; top: 0px;">
						<a href="messages/messages.jsp">借卖方消息</a>
					</p>
					<p class="col-sm-2"
						style="color: #B7B7B7; font-size: 30px; position: relative; left: -90px; top: 30px;">7</p>
					<p class="col-sm-2"
						style="width: 100px; font-size: 16px; position: relative; left: 0px; top: 0px;">
						<a href="messages/mes_terrace.jsp">平台通知</a>
					</p>
					<p class="col-sm-2"
						style="color: #B7B7B7; font-size: 30px; position: relative; left: 20px; top: -2px;">7</p>
					
					
				</div>

				<div
					style="width: 300px; height: 240px; background: #fff; float: left; margin: 10px;">
					<div class="col-sm-2" style="width: 240px; left: 5px; top: 15px;">
						<p style="font-size: 18px; font-weight: bold;">订单</p>
						<p class="col-sm-2"
							style="width: 100px; font-size: 12px; color: #B7B7B7; position: relative; left: 220px; top: -34px;">
							<a href="order/all_order.jsp">全部</a>
						</p>
					</div>
					<p class="col-sm-2"
						style="width: 120px; font-size: 16px; position: relative; left: 6px; top: 0px;">
						<a href="#">今日新订单</a>
					</p>
					<p class="col-sm-2"
						style="color: #B7B7B7; font-size: 30px; position: relative; left: -112px; top: 30px;">10</p>
					<p class="col-sm-2"
						style="width: 100px; font-size: 16px; position: relative; left: -18px; top: 0px;">
						<a href="#">待付款</a>
					</p>
					<p class="col-sm-2"
						style="color: #B7B7B7; font-size: 30px; position: relative; left: -18px; top: -2px;">26</p>
				</div>
				<div
					style="width: 300px; height: 240px; background: #fff; float: left; margin: 10px;">
					<div class="col-sm-2" style="width: 240px; left: 5px; top: 15px;">
						<p style="font-size: 18px; font-weight: bold;">物流</p>
						<p class="col-sm-2"
							style="width: 100px; font-size: 12px; color: #B7B7B7; position: relative; left: 220px; top: -34px;">
							<a href="Logistics/deliver.jsp">全部</a>
						</p>
					</div>
					<p class="col-sm-2"
						style="width: 120px; font-size: 16px; position: relative; left: 6px; top: 0px;">
						<a href="#">待发货</a>
					</p>
					<p class="col-sm-2"
						style="color: #B7B7B7; font-size: 30px; position: relative; left: -112px; top: 30px;">14</p>
					<p class="col-sm-2"
						style="width: 120px; font-size: 16px; position: relative; left: -18px; top: 0px;">
						<a href="#">待确认发货</a>
					</p>
					<p class="col-sm-2"
						style="color: #B7B7B7; font-size: 30px; position: relative; left: -18px; top: -2px;">10</p>
				</div>
			</div>
			<div>
				<div
					style="width: 300px; height: 240px; background: #fff; float: left; margin: 10px;">
					<div class="col-sm-2" style="width: 240px; left: 5px; top: 15px;">
						<p style="font-size: 18px; font-weight: bold;">售后</p>
						<p class="col-sm-2"
							style="width: 100px; font-size: 12px; color: #B7B7B7; position: relative; left: 220px; top: -34px;">
							<a href="#">全部</a>
						</p>
					</div>
					<p class="col-sm-2"
						style="width: 120px; font-size: 16px; position: relative; left: 6px; top: 0px;">
						<a href="#">纠纷待处理</a>
					</p>
					<p class="col-sm-2"
						style="color: #B7B7B7; font-size: 30px; position: relative; left: -112px; top: 30px;">1</p>
					<p class="col-sm-2"
						style="width: 120px; font-size: 16px; position: relative; left: -18px; top: 0px;">
						<a href="#">纠纷处理中</a>
					</p>
					<p class="col-sm-2"
						style="color: #B7B7B7; font-size: 30px; position: relative; left: -18px; top: -2px;">3</p>
				</div>
				<div
					style="width: 300px; height: 240px; background: #fff; float: left; margin: 10px;">
					<div class="col-sm-2" style="width: 240px; left: 5px; top: 15px;">
						<p style="font-size: 18px; font-weight: bold;">商品</p>
						<p class="col-sm-2"
							style="width: 100px; font-size: 12px; color: #B7B7B7; position: relative; left: 220px; top: -34px;">
							<a href="#">全部</a>
						</p>
					</div>
					<p class="col-sm-2"
						style="width: 120px; font-size: 16px; position: relative; left: 6px; top: 0px;">
						<a href="#">在线商品</a>
					</p>
					<p class="col-sm-2"
						style="color: #B7B7B7; font-size: 30px; position: relative; left: -112px; top: 30px;">4</p>
					<p class="col-sm-2"
						style="width: 130px; font-size: 16px; position: relative; left: -18px; top: 0px;">
						<a href="#">库存售空商品</a>
					</p>
					<p class="col-sm-2"
						style="color: #B7B7B7; font-size: 30px; position: relative; left: -18px; top: -2px;">2</p>
				</div>
				<div
					style="width: 300px; height: 240px; background: #fff; float: left; margin: 10px;">
					<div class="col-sm-2" style="width: 240px; left: 5px; top: 15px;">
						<p style="font-size: 18px; font-weight: bold;">违规</p>
						<p class="col-sm-2"
							style="width: 100px; font-size: 12px; color: #B7B7B7; position: relative; left: 220px; top: -34px;">
							<a href="#">全部</a>
						</p>
					</div>
					<p class="col-sm-2"
						style="width: 120px; font-size: 16px; position: relative; left: 6px; top: 0px;">
						<a href="#">待申述</a>
					</p>
					<p class="col-sm-2"
						style="color: #B7B7B7; font-size: 30px; position: relative; left: -112px; top: 30px;">2</p>
					<p class="col-sm-2"
						style="width: 120px; font-size: 16px; position: relative; left: -18px; top: 0px;">
						<a href="#">违规下架</a>
					</p>
					<p class="col-sm-2"
						style="color: #B7B7B7; font-size: 30px; position: relative; left: -18px; top: -2px;">1</p>
				</div>
			</div>
			<div class="col-sm-8"
				style="position: relative; left: -18px; top: 30px;">
				<div>
					<p style="font-size: 18px; font-weight: bold;">实时概况</p>
				</div>
				<div
					style="background: #836FFF; width: 950px; height: 1px; top: 0px; position: relative;"></div>
				<div style="height: 100px; width: 950px;">
					<table>
						<tr>
							<th width="190" height="35" style="color: #454545;">下单订单量</th>
							<th width="190" height="35" style="color: #454545;">支付订单量</th>
							<th width="190" height="35" style="color: #454545;">支付金额</th>
							<th width="190" height="35" style="color: #454545;">下单买家数</th>
							<th width="190" height="35" style="color: #454545;">支付买家数</th>
						</tr>
						<tr>
							<th width="190" height="35" align="center">1624</th>
							<th width="190" height="35" align="center">1124</th>
							<th width="190" height="35" align="center">165495</th>
							<th width="190" height="35" align="center">1527</th>
							<th width="190" height="35" align="center">1013</th>
						</tr>

					</table>
				</div>
			</div>
		</div>
		<%@include file="components/asidebar.jsp"%>
	</div>
    </c:if>
    <c:if test="${ empty User}">
         <div class="row" >
             <div class="col-md-8 blog-main"
			style="position: relative; top: 20px; width: 1000px; left: 132px;">
             <p style="font-size: 18px; font-weight: bold;">请先登录</p>
             </div>
             <%@include file="components/asidebar.jsp"%>
         </div>
         
    </c:if>
	<%@ include file="components/footer.jsp"%>