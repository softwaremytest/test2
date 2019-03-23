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
<script>
	$("#fileUpload")
			.fileinput(
					{
						language : "zh",//设置语言
						uploadUrl : "${pageContext.request.contextPath}/fileUpload/UploadServlet",//上传地址
						uploadAsync : true,//同步还是异步
						showCaption : false,//是否显示标题
						showUpload : true,//是否显示上传按钮
						browseClass : "btn btn-primary", //按钮样式 
						allowedFileExtensions : [ 'jpg', 'png', 'gif', 'xls' ],//接收的文件后缀
						allowedFileTypes : [ 'image', 'video', 'flash', 'excel' ],//接收的文件类型['image', 'html', 'text', 'video', 'audio', 'flash','object']
						maxFileCount : 6,//最大上传文件数限制
						overwriteInitial : false,
						maxFileSize : 1000,
						msgFilesTooMany : "选择上传的文件数量({n}) 超过允许的最大数值{m}！",
						previewFileIcon : '<i class="glyphicon glyphicon-file"></i>',
						enctype : 'multipart/form-data',
						/* allowedPreviewTypes: null, */
						previewFileIconSettings : {
							'docx' : '<i class="glyphicon glyphicon-file"></i>',
							'xlsx' : '<i class="glyphicon glyphicon-file"></i>',
							'pptx' : '<i class="glyphicon glyphicon-file"></i>',
							'jpg' : '<i class="glyphicon glyphicon-picture"></i>',
							'pdf' : '<i class="glyphicon glyphicon-file"></i>',
							'zip' : '<i class="glyphicon glyphicon-file"></i>'
						}
					});
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
							href="others.jsp" class="list-group-item" style="color: #000000;">店铺管理</a>
						<a href="others_product.jsp" class="list-group-item"
							style="color: #000000;">产品管理</a> <a href="others_logistics.jsp"
							class="list-group-item" style="color: #000000;">物流管理</a> <a
							href="others_others.jsp" class="list-group-item"
							style="background: #F5F5F5; color: #EE7621;">多平台订单导入</a>
						<a href="others_others.jsp"
							class="list-group-item" style="color: #000000;">支付管理</a>
					</div>


				</div>
				<!-- 右边栏 -->
				<div class="col-md-9">
					<!-- 页面名称 -->
					<div>
						<p style="font-size: 18px; font-weight: bold;">多平台订单导入</p>
					</div>
					<!-- 搜索 -->
					<div style="height:500px;">
						<form enctype="multipart/form-data" id="uploadForm" method="post">
							<input id="fileUpload" class="file" type="file" name="fileUpload"
								multiple data-show-preview="true">
						</form>
					</div>
				</div>
			</div>

		</div>
	</c:if>
	<%@ include file="../components/footer.jsp"%>