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


</head>
<body>
	<div style="height: 45px;">
		<%@ include file="com/header.jsp"%>
	</div>
	<!-- 顶部导航栏 -->
	<%@ include file="com/nav.jsp"%>
		<!-- 内容 -->
	<c:if test="${  empty User}">
		<div class="container"
			style="position: relative; top: 20px; height: 600px">
			<p style="font-size: 18px; font-weight: bold;">请先登录</p>

		</div>

	</c:if>
	<c:if test="${not  empty User}">
		<div class="container" style="position: relative; top: 20px">
		<!-- 列表组 -->
		<div class="row">
		
			<!-- 右边栏 -->
			
				<!-- 页面名称 -->
				<div>
					<p style="font-size: 18px; font-weight: bold;">供应商信息</p>
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
								    <option value="state_d_Cname"></option>
									<option value="state_d_Cname">公司名称</option>
									<option value="state_d_address">地址</option>
									<option value="state_d_product">产品</option>
									<option value="state_d_Pname">联系人</option>
									<option value="state_d_phone">手机号</option>
									<option value="state_d_mail">邮箱</option>
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
							<th width="180" align="center">公司名称</th>
							<th width="200" align="center">地址</th>
							<th width="350" align="center">产品</th>
							<th width="50" align="center">联系人</th>
							<th width="120" align="center">联系人手机号</th>
							<th width="200" align="center">邮箱</th>
						</tr>

                        <tr>
							<th style="width: 25px;background:#ffffff"><input id="checkAll"
								type="checkbox" /></th>
							<th width="100" align="center" bgcolor="#ffffff" id="c">重庆诺迪亚机电有限公司</th>
							<th width="100" align="center" bgcolor="#ffffff">重庆市九龙坡区兴堰路10号14幢6-6号</th>
							<th width="250" align="center" bgcolor="#ffffff">专业从事高档写字楼、别墅及酒店会所等空间的装饰装修工程</th>
							<th width="100" align="center" bgcolor="#ffffff">王二</th>
							<th width="50" align="center" bgcolor="#ffffff">13632146985</th>
							
							<th width="80" align="center" bgcolor="#ffffff">20190102@qq.com</th>
						</tr>
						


                         <tr>
							<th style="width: 25px;background:#f7dfd5"><input id="checkAll"
								type="checkbox" /></th>
							<th width="100" align="center" bgcolor="#f7dfd5" id="c">长沙市古沙自动化仪表有限公司</th>
							<th width="100" align="center" bgcolor="#f7dfd5">湖南长沙开福区长沙市开福区芙蓉北路街道金泰路199号湘江世纪城豪江苑2栋1202房</th>
							<th width="250" align="center" bgcolor="#f7dfd5">代理销售欧洲的品牌，如西门子/SIENEMS,哈希 /HACH1，威卡/WIKA .ABB.美德克斯/MDEXX，施乐百/ZIEHL-ABEGG.依必安派特/ ebmpapst.贺德克/HYDAC。MOOG等。</th>
							<th width="100" align="center" bgcolor="#f7dfd5">曹操</th>
							<th width="50" align="center" bgcolor="#f7dfd5">16458521142</th>
							
							<th width="80" align="center" bgcolor="#f7dfd5">70190103@qq.com</th>
						</tr>

                        <tr>
							<th style="width: 25px;background:#ffffff"><input id="checkAll"
								type="checkbox" /></th>
							<th width="100" align="center" bgcolor="#ffffff" id="c">广州凯胜建筑材料有限公司</th>
							<th width="100" align="center" bgcolor="#ffffff">广州市天河区天河北路620号2701房（仅限办公用途）</th>
							<th width="250" align="center" bgcolor="#ffffff">提供建筑工程的配套解决方案、专注于优化采购流程、施工方案以及为广大客户的海外工程提供商务服务和外贸采购。</th>
							<th width="100" align="center" bgcolor="#ffffff">项羽</th>
							<th width="50" align="center" bgcolor="#ffffff">13965485978</th>
							
							<th width="80" align="center" bgcolor="#ffffff">501015403@qq.com</th>
						</tr>  
                          
                         
						
						
							<tr >
							<th style="width: 25px;background:#f7dfd5"><input id="checkAll"
								type="checkbox" /></th>
							<th width="100" align="center" bgcolor="#f7dfd5" id="c">上海迅嵘检测设备有限公司</th>
							<th width="100" align="center" bgcolor="#f7dfd5">上海市金山区朱泾镇朱平公路4458号二栋128室</th>
							<th width="250" align="center" bgcolor="#f7dfd5">供应材料力学试验设备、环境试验设备、振动试验设备、影像光学试验设备。</th>
							<th width="100" align="center" bgcolor="#f7dfd5">李白</th>
							<th width="50" align="center" bgcolor="#f7dfd5">17459632548</th>
							
							<th width="80" align="center" bgcolor="#f7dfd5">601701403@qq.com</th>
						</tr>
                          
                          
						<tr>
							<th style="width: 25px;background:#ffffff"><input id="checkAll"
								type="checkbox" /></th>
							<th width="180" align="center" bgcolor="#ffffff" id="c">深圳瑞力网科技有限公司</th>
							<th width="200" align="center" bgcolor="#ffffff">深圳市前海深港合作区前湾一路1号A栋201室（入驻深圳市前海商务秘书有限公司）</th>
							<th width="350" align="center" bgcolor="#ffffff">为创新创业者及小微企业提供从知识产权申请保护、知识产权维权、知识产权评估、知识产权交易、知识产权孵化、知识产权金融等一站式的新型在线知识产权运营服务。</th>
							<th width="50" align="center" bgcolor="#ffffff">狄仁杰</th>
							<th width="120" align="center" bgcolor="#ffffff">13634569523</th>
							
							<th width="200" align="center" bgcolor="#ffffff">123456789@qq.com</th>
						</tr>
						
						
							<tr>
							<th style="width: 25px;background:#f7dfd5"><input id="checkAll"
								type="checkbox" /></th>
							<th width="100" align="center" bgcolor="#f7dfd5" id="c">云南零态势科技有限公司</th>
							<th width="100" align="center" bgcolor="#f7dfd5">云南省昆明市官渡区矣六乡子君村金福地花园小区4幢2108室</th>
							<th width="250" align="center" bgcolor="#f7dfd5">域名注册，虚拟主机，主机托管，主机租用、网站建设、开发，网络宣传推广、Pos收单业务、电子商城网站的开发. </th>
							<th width="100" align="center" bgcolor="#f7dfd5">虞姬</th>
							<th width="50" align="center" bgcolor="#f7dfd5">13654895325</th>
							
							<th width="80" align="center" bgcolor="#f7dfd5">12190103@qq.com</th>
						</tr>
						
						
						<tr>
							<th style="width: 25px;background:#ffffff"><input id="checkAll"
								type="checkbox" /></th>
							<th width="100" align="center" bgcolor="#ffffff" id="c">智广控股有限公司</th>
							<th width="100" align="center" bgcolor="#ffffff">浙江省乐清市柳市镇智广村</th>
							<th width="250" align="center" bgcolor="#ffffff"> 防爆电器、照明灯具、仪器仪表、五金工具、绝缘制品、液压及气压动力机械及元件、配电开关控制设备及配件</th>
							<th width="100" align="center" bgcolor="#ffffff">李四</th>
							<th width="50" align="center" bgcolor="#ffffff">17365420156</th>
						
							<th width="80" align="center" bgcolor="#ffffff">30190103@qq.com</th>
						</tr>
					
					
					</thead>
				</table>
                </div>
			
		</div>

	</div>
	</c:if>
	<%@ include file="../components/footer.jsp"%>