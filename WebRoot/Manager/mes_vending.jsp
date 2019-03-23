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
<link rel="stylesheet" type="text/css" href="../css/test3.css" />
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


</head>
<body>
	<div style="height: 45px;">
		<%@ include file="com/header.jsp"%>
	</div>
	<!-- 顶部导航栏 -->
	<%@ include file="com/nav1.jsp"%>
	<!-- 内容 -->
	<c:if test="${  empty User}">
		<div class="container"
			style="position: relative; top: 20px; height: 600px">
			<p style="font-size: 18px; font-weight: bold;">请先登录</p>

		</div>

	</c:if>
	<c:if test="${not  empty User}">
		<div class="container"
			style="position: relative; top: 20px; height: 500px;">
			<!-- 列表组 -->
			<div class="row">
				<div class="col-md-3" style="left: 35px;">
					<div class="list-group" id="shu-daohanglan" style="width: 200px;">
						<a href="messages.jsp" class="list-group-item"
							id="shu-daohanglan-title"
							style="font-size: 18px; font-weight: bold;">消息 </a> <a
							href="messages.jsp" class="list-group-item"
							style="color: #000000;">发布通知</a> <a
							href="mes_management.jsp" class="list-group-item"
							style="color: #000000;">通知管理</a> <a href="mes_examine.jsp"
							class="list-group-item" style="background: #F5F5F5; color: #EE7621;">审核</a>
					</div>



				</div>
				<!-- 右边栏 -->
				<div class="col-md-9">
					<!-- 分类 -->
					<div style="width: 320px;height: 40px;background:#FF8C69;padding-top:10px;">
						<div style="width: 150px;height: 40px;text-align: center;padding:10px;background:#FF8C69;top:-10px;position: relative;">
							<a href="mes_examine.jsp" style="">供应商</a>
						</div>
						<div style="width: 150px;height: 40px;text-align: center;padding:10px;background:#EED8AE;top: -50px; left:158px;position: relative;">
							<a href="mes_vending.jsp" style="">借卖方</a>
						</div>
						
					</div>
					<!-- 红线 -->
					<div
						style="background: #ff0000; width: 320px; height: 2px; top: 5px; position: relative;"></div>
					<!-- 内容 -->
					<div style="height:30px;">
					    <p style=" top: 20px;left:40px; position: relative;">邮箱</p>
					    <p style=" top: -8px; left:160px;position: relative;">姓名</p>
					    <p style=" top: -40px;left:225px; position: relative;">性别</p>
					    <p style=" top: -68px;left:304px; position: relative;">手机号码</p>
					    <p style=" top: -98px;left:455px; position: relative;">身份证</p>
					    <p style=" top: -130px;left:615px; position: relative;">状态</p>
					    <p style=" top: -160px;left:695px; position: relative;">审核</p>
					</div>
					<div
					style="background: #ff0000; width: 750px; height: 1px; top: 15px; position: relative;"></div>
						<jsp:include page='${"../VenServlet" }'>
							<jsp:param name="type" value="listvendings" />
							<jsp:param name="author" value="${param.author }" />
						</jsp:include>
					
				</div>
			</div>
		</div>
	</c:if>
	<%@ include file="../components/footer.jsp"%>