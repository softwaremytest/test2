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
<title>我的营销</title>
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
<script>
function control(obj) {
	var divDemo = document.getElementById('divDemo');
		divDemo.style.height = 650 + "px";
		divDemo.style.overflow = "hidden";
}
function change(obj) {
	alert('该活动已生成');
}
    	
    </script>
<style>
body {
	background: #F5F5F5;
}
#divDemo {
	width: 600px;
	height: 40px;
	overflow: hidden;
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
		<%@ include file="../components1/header.jsp"%>
	</div>
	<!-- 顶部导航栏 -->
	<%@ include file="../nav1.jsp"%>
	<!-- 内容 -->
	<div class="container" style="position: relative; top: 20px">
		<!-- 列表组 -->
		<div class="row">
			<!-- 左边栏 -->
			<div class="col-md-3" style="left: 35px;">
				<div class="list-group" id="shu-daohanglan" style="width: 200px;">
					<a href="../S_Shop/select.jsp" class="list-group-item"
						id="shu-daohanglan-title"
						style="font-size: 18px; font-weight: bold;">店铺管理</a>
					 <a href="../S_Shop/select.jsp" class="list-group-item"
						style="color: #000000;">选择上架产品</a>
					<a href="../S_Shop/comprehensive.jsp" class="list-group-item"
						style="color: #000000;">供应商综合能力</a>	
					 <a href="../S_Shop/manager_pro.jsp"
						class="list-group-item" style="color: #000000;">管理产品</a> 
					<a href="../S_Shop/marketing.jsp" class="list-group-item" 
					   style="background: #F5F5F5; color: #EE7621;">我的营销</a>
                          <a href="../S_Shop/marketing.jsp" class="list-group-item" 
					   style="color: #000000;">会员增值</a>
				</div>


			</div>
			<!-- 右边栏 -->
			<div class="col-md-9">
				<!-- 页面名称 -->
				<div>
					<p style="font-size: 18px; font-weight: bold;">店铺活动</p>
				</div>
                <!-- 分类 -->
				<div>
					<div class="test2-cgx" style="background:#EE2C2C;">
						<a href="marketing.jsp" style="">限时限量折扣</a>
					</div>
					<div class="test2-cgx" style="margin-left:3px">
						<a href="" style="">全店铺打折</a>
					</div>
					<div class="test2-cgx" style="margin-left:3px">
						<a href="" style="">满件折/满立减</a>
					</div>
					<div class="test2-cgx" style="margin-left:3px;">
						<a href="" style="">店铺优惠卷</a>
					</div>
					<div class="test2-cgx" style="margin-left:3px;">
						<a href="" style="">购物券</a>
					</div>
				</div>
				<!-- 红线 -->
				<div style="background:#ff0000;width:520px;height:2px;top:45px;position:relative;"></div>
				<div style="height: 500px;">
				       <div id="divDemo" style="position: relative;left: 0px; top: 15px;">
								<input type="button" value="创建活动" class="btn btn-default"
								style="color: #fff;background:red;left: 0px; top: 10px; position: relative;" onclick="control(this)" />
								<div style="left: 0px; top: 25px; position: relative;background:#fff;">
								    <p style="font-size: 14px; font-weight: bold;left: 5px; top: 10px; position: relative;">活动基本信息</p>
								    <p style="font-size: 13px;left:40px; top: 15px; position: relative;">活动名称:</p>
								    	<input type="text" class="form-control"
						                style="width: 400px; left: 120px; top: -18px; position: relative;"
						                placeholder="活动名称最大字符数为32">
								    <p style="font-size: 13px;left:40px; top: -05px; position: relative;">活动开始时间:</p>
								    <input name="createdatetimeStart" style="width: 140px;left:140px; top: -35px; position: relative;"
									onFocus="WdatePicker({readOnly:true,dateFmt:'yyyy-MM-dd HH:mm:ss'})"
									placeholder="" />
								    <p style="font-size: 13px;left:40px; top: -27px; position: relative;">活动结束时间:</p>
								     <input name="createdatetimeStart" style="width: 140px;left:140px; top: -50px; position: relative;"
									onFocus="WdatePicker({readOnly:true,dateFmt:'yyyy-MM-dd HH:mm:ss'})"
									placeholder="" />
								    <p style="font-size: 13px;left:40px; top: -35px; position: relative;">时间备注:	活动时间为美国太平洋时间</p>
								    <input type="button" value="确定" class="btn btn-default"
									style="color:red;background:#ff0;left:40px; top: -17px; position: relative;" id="c" onclick="change(this)" />
								</div>
				       </div>
				</div>
			</div>

		</div>
	</div>

	<%@ include file="../components1/footer.jsp"%>