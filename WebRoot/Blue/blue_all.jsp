<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>蓝海</title>
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

<!-- 1.引入 echarts.js -->
<script type="text/javascript" src="echarts/echarts.js"></script>
<!-- 引入jquery.js -->
<script type="text/javascript" src="jquery-3.3.1/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
	function showDiv(obj, str) {
		var name = obj.innerHTML;
		var sDiv = document.getElementById('txt_' + name.split('.')[0]);//文件名自己判断
		if (!sDiv) {
			sDiv = document.createElement("DIV");
			sDiv.id = 'txt_' + name.split('.')[0];
			sDiv.style.position = 'absolute';
			sDiv.style.top = obj.offsetTop + 260 + 'px';
			sDiv.style.left = obj.offsetLeft + 490 + 'px';
			sDiv.style.width = 100 + 'px';
			sDiv.style.border = '1px black solid';
			sDiv.style.backgroundColor = "#FFF";
			sDiv.style["word-break"] = "break-all"; //加上这行 不会出现文字有时不换行
			var spanId = document.createElement("span");
			spanId.innerHTML = str;
			sDiv.appendChild(spanId);
			document.body.appendChild(sDiv);
		}
		sDiv.style.display = 'block';
	}

	function hideDiv(obj) {
		var name = obj.innerHTML;
		var sDiv = document.getElementById('txt_' + name.split('.')[0]);//文件名自己判断
		if (sDiv) {
			sDiv.style.display = 'none';
		}
	}
</script>
</head>
<body>
	<div style="height: 45px;">
		<%@ include file="../components/header.jsp"%>
	</div>
	<!-- 顶部导航栏 -->
	<%@ include file="../components/blue_top.jsp"%>
	<!-- 内容 -->
	<div class="container"
		style="position: relative; top: 50px; height: 1000px;">
		<!-- 列表组 -->
		<div class="row">
			<!-- 左边栏 -->
			<div class="col-md-3" style="left: 35px;">
				<div class="list-group" id="shu-daohanglan" style="width: 200px;">
					<a href="../DP_ValueOfSales.jsp" class="list-group-item"
						id="shu-daohanglan-title"
						style="font-size: 18px; font-weight: bold;">数据纵横 </a> <a
						href="../DP_ValueOfSales.jsp" class="list-group-item"
						style="color: #000000;">整体概况</a> <a href="../DP_replenishment.jsp"
						class="list-group-item" style="color: #000000;">补货</a> <a
						href="blue_industry.jsp" class="list-group-item"
						style="background: #F5F5F5; color: #EE7621;">蓝海行业</a>
				</div>
			</div>
			<!-- 右边栏 -->
			<div class="col-md-9" >
				<a><img src="../img/h.JPG"
					style="width: 1000px; height: 373px;left:-20px; top:10px; position: relative;" /></a>
				<a><img src="../img/h1.JPG"
					style="width: 1000px; height: 495px; left: -20px; top: 32px; position: relative;" /></a>

			</div>
		</div>
	</div>


	<%@ include file="../components/footer.jsp"%>