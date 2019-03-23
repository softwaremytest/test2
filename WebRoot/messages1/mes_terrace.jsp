<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>平台通知</title>
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

#shu-daohanglan-title {
	font-size: 18px;
	font-weight: bold;
	color: #000000
}

#shu-daohanglan a:hover {
	color: #EE7621;
}
</style>

<!-- 1.引入 echarts.js -->
<script type="text/javascript" src="../echarts/echarts.js"></script>
<!-- 引入jquery.js -->
<script type="text/javascript" src="../jquery-3.3.1/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="../My97DatePicker/WdatePicker.js"></script>
</head>
<body>
	<div  style="height:45px;">
		<%@ include file="../components1/header.jsp"%>
	</div>
	<!-- 顶部导航栏 -->
	<%@ include file="../components1/mes_top.jsp"%>
	<!-- 内容 -->
	<div class="container" style="position: relative; top: 20px">
		<!-- 列表组 -->
		<div class="row">
			<!-- 左边栏 -->
			<div class="col-md-3" style="left: 35px;">
				<div class="list-group" id="shu-daohanglan" style="width: 200px;">
					<a href="../messages1/messages.jsp" class="list-group-item"
						id="shu-daohanglan-title"
						style="font-size: 18px; font-weight: bold;">卖家消息 </a>
					 <a href="../messages1/messages.jsp" class="list-group-item"
						style="color: #000000;">站内信</a>
					 <a href="#" class="list-group-item" style="color: #000000;">垃圾箱</a>
				</div>
				<div class="list-group" id="shu-daohanglan" style="width: 200px;">
					<a href="../messages1/mes_terrace.jsp" class="list-group-item"
						id="shu-daohanglan-title"
						style="font-size: 18px; font-weight: bold;">平台通知 </a>
					  <a href="../messages1/mes_terrace.jsp" class="list-group-item"
						style="background: #F5F5F5; color: #EE7621;">系统消息</a> 
					  <a href="#" class="list-group-item" style="color: #000000;">最新公告</a>
					  <a href="#" class="list-group-item" style="color: #000000;">拒付通知</a>
					  <a href="#" class="list-group-item" style="color: #000000;">仲裁通知</a>
				</div>
				<div class="list-group" id="shu-daohanglan" style="width: 200px;">
					<a href="../DP_ValueOfSales1.jsp" class="list-group-item"
						id="shu-daohanglan-title" style="font-size: 18px; font-weight: bold;">供应商消息</a> 
						<a href="#" class="list-group-item" style="color: #000000;">站内信</a> 
						<a href="#" class="list-group-item" style="color: #000000;">垃圾箱</a>

				</div>

			</div>
			<!-- 右边栏 -->
			<div class="col-md-9">
				<!-- 页面名称 -->
				<div>
					<p style="font-size: 18px; font-weight: bold;">站内信</p>
				</div>
				<!-- 搜索 -->
				<div class="panel-body">
					<p style="color: red">${error}</p>
					<form class="form-horizontal" id="form1" name="form1" method="post"
						action="LoginAction">

						<div class="form-group"
							style="position: relative; top: -10px; background: #ffffff; height: 50px;">
							<div class="col-sm-2" style="width: 150px; left: 0px; top: 8px;">
								<select class="form-control" name="zhou">
									<option value="state_all">全部</option>
									<option value="state_no">未读</option>
									<option value="state_yes">已读</option>
								</select>
							</div>
							<div class="col-sm-2"
								style="width: 170px; left: -10px; top: 8px;">
								<select class="form-control" name="zhou">
									<option value="oper_all">全部</option>
									<option value="oper_yes">已处理</option>
									<option value="oper_no">未处理</option>
								</select>
							</div>
							<div class="col-sm-2"
								style="width: 120px; left: -20px; top: 8px;">
								<select class="form-control" name="zhou">
									<option value="type_all">全部</option>
									<option value="type_liu">订单留言</option>
									<option value="type_other">其他</option>

								</select>
							</div>
							<div class="col-sm-2"
								style="width: 150px; left: -30px; top: 12px;">
								<input name="createdatetimeStart" style="width: 140px;"
									onFocus="WdatePicker({readOnly:true,dateFmt:'yyyy-MM-dd HH:mm:ss'})"
									placeholder="开始时间" />
							</div>
							<div class="col-sm-2"
								style="width: 100px; left: -26px; top: 12px;">
								<p style="font-size: 18px;">至</p>
							</div>
							<div class="col-sm-2"
								style="width: 150px; left: -92px; top: 12px;">
								<input name="createdatetimeEnd" style="width: 140px;"
									onFocus="WdatePicker({readOnly:true,dateFmt:'yyyy-MM-dd HH:mm:ss'})"
									placeholder="结束时间" />
							</div>
							<div class="col-sm-2"
								style="width: 120px; left: 60px; top: -18px;">
								<button type="submit" class="btn btn-default"
									style="background: #EE2C2C; color: #ffffff">筛选</button>
							</div>
							
						</div>

					</form>
				</div>

				<table id="message-list" style="table-layout: fixed;">
					<thead>
						<tr>
							<th style="width: 25px;"><input id="checkAll"
								type="checkbox" /></th>
							<th width="100" align="center">处理状态</th>
							<th width="250" align="center">消息内容</th>
							<th width="50" align="center">订单</th>
							<th width="20" align="center">类型</th>
							<th width="60" align="center">打标签</th>
							<th width="80" align="center">时间</th>
						</tr>
                        <tr>
							<th style="width: 25px;background:#ffffff"><input id="checkAll"
								type="checkbox" /></th>
							<th width="100" align="center" bgcolor="#ffffff" id="c">未处理</th>
							<th width="250" align="center" bgcolor="#ffffff">关于客服电话回复通知</th>
							<th width="100" align="center" bgcolor="#ffffff">201901020002</th>
							<th width="50" align="center" bgcolor="#ffffff">其他</th>
							<th width="80" align="center" bgcolor="#ffffff">2019-01-02</th>
							<th width="60" align="center" bgcolor="#ffffff"><input type="button" value="未读" 
									style="color:red" id="b" onclick="change(this)" /></th>
							
						</tr>
						<tr>
							<th style="width: 25px;background:#a9bdd6"><input id="checkAll"
								type="checkbox" /></th>
							<th width="100" align="center" bgcolor="#a9bdd6" id="c">未处理</th>
							<th width="250" align="center" bgcolor="#a9bdd6">不允许无商标产品存在的类目的产品发布提醒</th>
							<th width="100" align="center" bgcolor="#a9bdd6">201901020003</th>
							<th width="50" align="center" bgcolor="#a9bdd6">其他</th>
							<th width="80" align="center" bgcolor="#a9bdd6">2019-01-02</th>
							<th width="60" align="center" bgcolor="#a9bdd6"><input type="button" value="未读" 
									style="color:red" id="b" onclick="change(this)" /></th>
							
						</tr>
						<tr>
							<th style="width: 25px;background:#ffffff"><input id="checkAll"
								type="checkbox" /></th>
							<th width="100" align="center" bgcolor="#ffffff" id="c">未处理</th>
							<th width="250" align="center" bgcolor="#ffffff"> 关于客服电话的通知</th>
							<th width="100" align="center" bgcolor="#ffffff">201901030001</th>
							<th width="50" align="center" bgcolor="#ffffff">其他</th>
							<th width="80" align="center" bgcolor="#ffffff">2019-01-03</th>
							<th width="60" align="center" bgcolor="#ffffff"><input type="button" value="未读" 
									style="color:red" id="b" onclick="change(this)" /></th>
							
						</tr>
						<tr>
							<th style="width: 25px;background:#a9bdd6"><input id="checkAll"
								type="checkbox" /></th>
							<th width="100" align="center" bgcolor="#a9bdd6" id="c">未处理</th>
							<th width="250" align="center" bgcolor="#a9bdd6">快递码号统一</th>
							<th width="100" align="center" bgcolor="#a9bdd6">201901030002</th>
							<th width="50" align="center" bgcolor="#a9bdd6">其他</th>
							<th width="80" align="center" bgcolor="#a9bdd6">2019-01-03</th>
							<th width="60" align="center" bgcolor="#a9bdd6"><input type="button" value="未读" 
									style="color:red" id="b" onclick="change(this)" /></th>
							
						</tr>
						<tr>
							<th style="width: 25px;background:#ffffff"><input id="checkAll"
								type="checkbox" /></th>
							<th width="100" align="center" bgcolor="#ffffff" id="c">未处理</th>
							<th width="250" align="center" bgcolor="#ffffff">快递接口部分字段升级公告</th>
							<th width="100" align="center" bgcolor="#ffffff">201901030011</th>
							<th width="50" align="center" bgcolor="#ffffff">其他</th>
								<th width="80" align="center" bgcolor="#ffffff">2019-01-03</th>
							<th width="60" align="center" bgcolor="#ffffff"><input type="button" value="未读" 
									style="color:red" id="b" onclick="change(this)" /></th>
						
						</tr>
						<tr>
							<th style="width: 25px;background:#a9bdd6"><input id="checkAll"
								type="checkbox" /></th>
							<th width="100" align="center" bgcolor="#a9bdd6" id="c">未处理</th>
							<th width="250" align="center" bgcolor="#a9bdd6">pop商家-商品数据库维护公告</th>
							<th width="100" align="center" bgcolor="#a9bdd6">201901030022</th>
							<th width="50" align="center" bgcolor="#a9bdd6">其他</th>
								<th width="80" align="center" bgcolor="#a9bdd6">2019-01-03</th>
							<th width="60" align="center" bgcolor="#a9bdd6"><input type="button" value="未读" 
									style="color:red" id="b" onclick="change(this)" /></th>
						
						</tr>
						<tr >
							<th style="width: 25px;background:#ffffff"><input id="checkAll"
								type="checkbox" /></th>
							<th width="100" align="center" bgcolor="#ffffff" id="c">未处理</th>
							<th width="250" align="center" bgcolor="#ffffff">商城平行优惠规则变更通知</th>
							<th width="100" align="center" bgcolor="#ffffff">201901030023</th>
							<th width="50" align="center" bgcolor="#ffffff">其他</th>
							<th width="80" align="center" bgcolor="#ffffff">2019-01-03</th>
							<th width="60" align="center" bgcolor="#ffffff"><input type="button" value="未读" 
									style="color:red" id="b" onclick="change(this)" /></th>
							
						</tr>
					</thead>
				</table>

			</div>
		</div>

	</div>
<%@ include file="../components1/footer.jsp"%>