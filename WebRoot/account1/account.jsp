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
<title>账户设置</title>
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

#divDemo {
	width: 750px;
	height: 150px;
	overflow: hidden;
}
</style>

<!-- 1.引入 echarts.js -->
<script type="text/javascript" src="../echarts/echarts.js"></script>
<!-- 引入jquery.js -->
<script type="text/javascript" src="../jquery-3.3.1/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="../My97DatePicker/WdatePicker.js"></script>
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
</head>
<body>
	<div  style="height:45px;">
		<%@ include file="../components1/header.jsp"%>
	</div>
	<!-- 顶部导航栏 -->
	<%@ include file="../components1/acc_top.jsp"%>
	<!-- 内容 -->
	<div class="container" style="position: relative; top: 20px">
		<!-- 列表组 -->
		<div class="row">
			<!-- 左边栏 -->
			<div class="col-md-3" style="left: 35px;">
				<div class="list-group" id="shu-daohanglan" style="width: 200px;">
					<a href="../account1/account.jsp" class="list-group-item"
						id="shu-daohanglan-title"
						style="font-size: 18px; font-weight: bold;">账号及认证 </a> <a
						href="../account1/account.jsp" class="list-group-item"
						style="background: #F5F5F5; color: #EE7621;">账号设置</a> <a
						href="../account1/contact.jsp" class="list-group-item"
						style="color: #000000;">联系人设置</a> <a href="#"
						class="list-group-item" style="color: #000000;">年费发票</a>

				</div>
			

			</div>
			<!-- 右边栏 -->
			<div class="col-md-9">
				<!-- 页面名称 -->
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
				<div style="height: 18px; width: 750px;"></div>
				<div
					style="background: #FFF; color: #000; padding: 10px; width: 750px; height: 90px;">
					<p style="font-size: 18px; font-weight: bold;">管理子账户</p>
					<table style="margin: 0px 0px 0px 25px;">
						<tr>
							<th width="100" height="35"><a style="font-size: 13px;">添加子账户</a></th>
							<th width="100" height="35"><a style="font-size: 13px;">管理子账户</a></th>
						</tr>

					</table>
				</div>
				<div style="height: 18px; width: 750px;"></div>
				<div
					style="background: #FFF; color: #000; padding: 10px; width: 750px; height: 120px;">
					<p style="font-size: 18px; font-weight: bold;">代扣账户绑定设置</p>
					<table style="margin: 0px 0px 0px 200px;">
						<tr>
							<td width="200" height="35">绑定人民币扣款支付宝账户:</td>
							<th width="100" height="35"><a style="font-size: 13px;">立即签约</a></th>
						</tr>
						<tr>
							<td width="200" height="35">绑定美元扣款支付宝国际账户:</td>
							<th width="100" height="35"><a style="font-size: 13px;">立即签约</a></th>
						</tr>
					</table>
				</div>
			</div>

		</div>
	</div>

	<%@ include file="../components1/footer.jsp"%>