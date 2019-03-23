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
<title>借卖方</title>
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
		<%@ include file="com/header.jsp"%>
	</div>
		<!-- 顶部导航栏 -->
	<%@ include file="com/nav2.jsp"%>
		<!-- 内容 -->
	<c:if test="${not  empty User}">
		<div class="container" style="position: relative; top: 20px;height:550px;">
		<!-- 列表组 -->
		<div class="row">
		
			<!-- 右边栏 -->
			
				<!-- 页面名称 -->
				<div>
					<p style="font-size: 18px; font-weight: bold;">借卖方信息</p>
				</div>
				<!-- 搜索 -->
				<div class="panel-body">
					<p style="color: red"></p>
					<form class="form-horizontal" id="form1" name="form1" method="post"
						action="../SearchAction">

						<div class="form-group"
							style="position: relative; top: -10px; background: #ffffff; height: 50px;">
							<div class="col-sm-2" style="width: 150px; left: 0px; top: 8px;">
								<select class="form-control" name="search">
									<option value="state_s_phone">手机号</option>
									<option value="state_s_name">名称</option>
									<option value="state_s_address">地址</option>
									<option value="state_s_mail">邮箱</option>
								</select>
							</div>
							<div class="col-sm-2"
								style="width: 600px; left: 60px; top: 10px;">
                            <input type="text" class="form-control" id="text1"
										name="OrderId" pattern="" placeholder="">
                       
                            </div>
							<div class="col-sm-2"
								style="width: 100px; left: 120px; top: 10px;">
								<input type="submit" value="搜索" class="btn btn-default"
									style="background: #EE2C2C; color: #ffffff" />
							</div>
						</div>

					</form>
				</div>
                <div id="divDemo">
				<table id="message-list" style="table-layout: fixed;" >
					<thead>
						<tr>
							<th style="width: 35px;"><input id="checkAll"
								type="checkbox" /></th>
							<th width="100" align="center">名称</th>
							<th width="120" align="center">手机号</th>
							<th width="200" align="center">邮箱</th>
							<th width="300" align="center">地址</th>
							<th width="450" align="center">备注</th>
							
							
						</tr>

                        <tr>
							<th style="width: 25px;background:#ffffff"><input id="checkAll"
								type="checkbox" /></th>
								<th width="100" align="center" bgcolor="#ffffff">王韦</th>
							<th width="50" align="center" bgcolor="#ffffff">13957146985</th>
							<th width="80" align="center" bgcolor="#ffffff">23690102@qq.com</th>
							<th width="100" align="center" bgcolor="#ffffff">上海市九龙坡区兴堰路10号14幢6-6号</th>
							<th width="250" align="center" bgcolor="#ffffff">专业从事高档写字楼、别墅及酒店会所等空间的装饰装修工程</th>
							
						</tr>
						


                        <tr>
							<th style="width: 25px;background:#f7dfd5"><input id="checkAll"
								type="checkbox" /></th>
							<th width="100" align="center" bgcolor="#f7dfd5">曹羽</th>
							<th width="50" align="center" bgcolor="#f7dfd5">13965485978</th>
							
							<th width="80" align="center" bgcolor="#f7dfd5">501015403@qq.com</th>
							<th width="100" align="center" bgcolor="#f7dfd5">广州市天河区天河北路620号2701房（仅限办公用途）</th>
							<th width="250" align="center" bgcolor="#f7dfd5">提供建筑工程的配套解决方案、专注于优化采购流程、施工方案以及为广大客户的海外工程提供商务服务和外贸采购。</th>
							
						</tr>  
                          
                         
						
						
							
                          
						<tr>
							<th style="width: 25px;background:#ffffff"><input id="checkAll"
								type="checkbox" /></th>
							
                            <th width="50" align="center" bgcolor="#ffffff">张仁杰</th>
							<th width="120" align="center" bgcolor="#ffffff">13665569523</th>
							
							<th width="200" align="center" bgcolor="#ffffff">123456789@qq.com</th>
                            <th width="200" align="center" bgcolor="#ffffff">深圳市前海深港合作区前湾一路1号A栋201室（入驻深圳市前海商务秘书有限公司）</th>
							<th width="350" align="center" bgcolor="#ffffff">为创新创业者及小微企业提供从知识产权申请保护、知识产权维权、知识产权评估、知识产权交易、知识产权孵化、知识产权金融等一站式的新型在线知识产权运营服务。</th>
							
						</tr>
						
						
							<tr>
							<th style="width: 25px;background:#f7dfd5"><input id="checkAll"
								type="checkbox" /></th>
							
							<th width="100" align="center" bgcolor="#f7dfd5">石蒂</th>
							<th width="50" align="center" bgcolor="#f7dfd5">13654896525</th>
							
							<th width="80" align="center" bgcolor="#f7dfd5">12190103@qq.com</th>
							<th width="100" align="center" bgcolor="#f7dfd5">云南省昆明市官渡区矣六乡子君村金福地花园小区4幢2108室</th>
							<th width="250" align="center" bgcolor="#f7dfd5">域名注册，虚拟主机，主机托管，主机租用、网站建设、开发，网络宣传推广、Pos收单业务、电子商城网站的开发. </th>
							
						</tr>
						
						
					
					
					</thead>
				</table>
                </div>
			
		</div>

	</div>

	</c:if>
	<%@ include file="../components/footer.jsp"%>