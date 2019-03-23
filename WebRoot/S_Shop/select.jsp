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
<title>上架产品</title>
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
    	function change(obj){
    		alert('该供应商该产品上架');
    		var divDemo =document.getElementById("b");
    		if (obj.value == "上架") {
    			divDemo.style.color="#757575";
    		}
		}
    	
    </script>
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
						style="background: #F5F5F5; color: #EE7621;">选择上架产品</a>
					<a href="../S_Shop/comprehensive.jsp" class="list-group-item"
						style="color: #000000;">供应商综合能力</a>	
					 <a href="../S_Shop/manager_pro.jsp"
						class="list-group-item" style="color: #000000;">管理产品</a> <a
						href="../S_Shop/marketing.jsp" class="list-group-item" style="color: #000000;">我的营销</a>
                         <a href="../S_Shop/marketing.jsp" class="list-group-item" 
					   style="color: #000000;">会员增值</a>
				</div>


			</div>
			<!-- 右边栏 -->
			<div class="col-md-9">
				<!-- 页面名称 -->
				<div>
					<p style="font-size: 18px; font-weight: bold;">选择上架产品</p>
				</div>

				<div style="background: #fff; height: 60px; width: 800px;">
					<p
						style="font-size: 16px; color: #B7B7B7; position: relative; top: 20px; left: 20px;">供应商:</p>
					<div class="col-sm-2" style="width: 330px; left: 60px; top: -18px;">
						<select class="form-control" name="zhou">
						 <option value="genera_goods"></option>
							<option value="genera_goods">东莞市风格鞋业有限公司</option>
							<option value="electrify_goods">特威创体育新技术发展有限公司</option>
							<option value="pureelectrify_goods">河北大力实业集团有限公司</option>
							<option value="liquid_goods">浙江威德康电气有限公司</option>
							<option value="pureelectrify">深圳市瑞奇斯实业有限公司</option>
							<option value="liquid">深圳市斯巴克实业有限公司</option>
						</select>
					</div>
					<p
						style="font-size: 16px; color: #B7B7B7; position: relative; left: 80px; top: -10px;">产品:</p>
					<div class="col-sm-2"
						style="width: 200px; left: 120px; top: -50px;">
						<select class="form-control" name="zhou1">
						    <option value="genera_goods"></option>
							<option value="genera_goods">电子产品</option>
							<option value="electrify_goods">玩具</option>
							<option value="pureelectrify_goods">日用品</option>
							<option value="liquid_goods">食品</option>
						</select>
					</div>
					<a href="select1.jsp"><button type="submit"
							class="btn btn-default"
							style="background: #EE2C2C; color: #fff; position: relative; top: -50px; left: 160px;">筛选</button></a>
				</div>
				<div style="background: #F5F5F5; height: 20px; width: 800px;"></div>
				<div style="background: #fff; width: 800px;">
					<div style="background: #fff; height: 20px; width: 800px;"></div>
					<div style="background: #C2C2C2; height: 40px; width: 800px;">
						<p
							style="font-size: 14px; position: relative; top: 12px; left: 80px;">供应商</p>
						<p
							style="font-size: 14px; position: relative; left: 320px; top: -17px;">产品</p>
						<p
							style="font-size: 14px; position: relative; left: 470px; top: -48px;">库存</p>
						<p
							style="font-size: 14px; position: relative; left: 550px; top: -78px;">建议零售价</p>
						<p
							style="font-size: 14px; position: relative; top: -108px; left: 645px;">销售价</p>
						<p
							style="font-size: 14px; position: relative; top: -138px; left: 750px;">上架</p>
					</div>
					<div style="background: #fff; width: 800px;">
						<table id="message-list" style="table-layout: fixed;">
							<thead>
								<tr style="background: #fff; height: 30px;">
									<th width="40%" align="center">东莞市风格鞋业有限公司</th>
									<th width="20%" align="center">运动鞋</th>
									<th width="12%" align="center">1500</th>
									<th width="12%" align="center">100</th>
									<th width="13%" align="center"><input type="text" style="width:50px;"/></th>
									<th width="10%" align="center" bgcolor="#ffffff"><input type="button" value="上架" 
									style="color:red;backgroung:#ffffff" id="b" onclick="change(this)" /></th>
								</tr>
								<tr style="background: #a9bdd6; height: 30px;">
									<th width="40%" align="center">东莞市风格鞋业有限公司</th>
									<th width="20%" align="center">球鞋</th>
									<th width="12%" align="center">1254</th>
									<th width="12%" align="center">315</th>
									<th width="13%" align="center"><input type="text" style="width:50px;"/></th>
									<th width="10%" align="center" bgcolor="#ffffff"><input type="button" value="上架" 
									style="color:red;backgroung:#a9bdd6" id="b" onclick="change(this)" /></th>
								</tr>
								<tr style="background: #fff; height: 30px;">
									<th width="40%" align="center">特威创体育新技术发展有限公司</th>
									<th width="20%" align="center">鼠标</th>
									<th width="12%" align="center">16545</th>
									<th width="12%" align="center">165</th>
									<th width="13%" align="center"><input type="text" style="width:50px;"/></th>
									<th width="10%" align="center" bgcolor="#ffffff"><input type="button" value="上架" 
									style="color:red" id="b" onclick="change(this)" /></th>
								</tr>
								<tr style="background: #a9bdd6; height: 30px;">
									<th width="40%" align="center">浙江威德康电气有限公司</th>
									<th width="20%" align="center">CHWDK系列无功动态调节器</th>
									<th width="12%" align="center">456</th>
									<th width="12%" align="center">26400</th>
									<th width="13%" align="center"><input type="text" style="width:50px;"/></th>
									<th width="10%" align="center" bgcolor="#ffffff"><input type="button" value="上架" 
									style="color:red;backgroung:#a9bdd6" id="b" onclick="change(this)" /></th>
								</tr>
								<tr style="background: #fff; height: 30px;">
									<th width="40%" align="center">深圳市瑞奇斯实业有限公司</th>
									<th width="20%" align="center">帐篷</th>
									<th width="12%" align="center">265</th>
									<th width="12%" align="center">5600</th>
									<th width="13%" align="center"><input type="text" style="width:50px;"/></th>
									<th width="10%" align="center" bgcolor="#ffffff"><input type="button" value="上架" 
									style="color:red" id="b" onclick="change(this)" /></th>
								</tr>
								<tr style="background: #a9bdd6; height: 30px;">
									<th width="40%" align="center">东莞市风格鞋业有限公司</th>
									<th width="20%" align="center">运动鞋</th>
									<th width="12%" align="center">1500</th>
									<th width="12%" align="center">100</th>
									<th width="13%" align="center"><input type="text" style="width:50px;"/></th>
									<th width="10%" align="center" bgcolor="#ffffff"><input type="button" value="上架" 
									style="color:red;backgroung:#a9bdd6" id="b" onclick="change(this)" /></th>
								</tr>
								<tr style="background: #fff; height: 30px;">
									<th width="40%" align="center">河北大力实业集团有限公司</th>
									<th width="20%" align="center">自行车</th>
									<th width="12%" align="center">4245</th>
									<th width="12%" align="center">1200</th>
									<th width="13%" align="center"><input type="text" style="width:50px;"/></th>
									<th width="10%" align="center" bgcolor="#ffffff"><input type="button" value="上架" 
									style="color:red" id="b" onclick="change(this)" /></th>
								</tr>
								<tr style="background: #a9bdd6; height: 30px;">
									<th width="40%" align="center">深圳市斯巴克实业有限公司</th>
									<th width="20%" align="center">睡袋</th>
									<th width="12%" align="center">1500</th>
									<th width="12%" align="center">1000</th>
									<th width="13%" align="center"><input type="text" style="width:50px;"/></th>
									<th width="10%" align="center" bgcolor="#ffffff"><input type="button" value="上架" 
									style="color:red;backgroung:#a9bdd6" id="b" onclick="change(this)" /></th>
								</tr>
							</thead>
						</table>

					</div>
				</div>
			</div>

		</div>
	</div>

	<%@ include file="../components1/footer.jsp"%>