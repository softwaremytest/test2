<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>整体概况</title>
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
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">


    <!-- Custom styles for this template -->
    <link href="https://fonts.googleapis.com/css?family=Playfair+Display:700,900" rel="stylesheet">
    <link href="css/blog.css" rel="stylesheet">
    <link href="css/blog-comment.css" rel="stylesheet">
<link href="css/se-footer.css" rel="stylesheet" type="text/css" />
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
</head>
<body>
    <div  style="height:45px;">
		<%@ include file="components1/header1.jsp"%>
	</div>
	<!-- 顶部导航栏 -->
	<%@ include file="components1/dpnav.jsp"%>
	<!-- 内容 -->
	<div class="container" style="position: relative; top: 50px;height:600px;">
		<!-- 列表组 -->
		<div class="row">
			<!-- 左边栏 -->
			<%@ include file="components1/dpleft.jsp"%>
             <!-- 右边栏 -->
			<div class="col-md-9" >
	            <!-- 分类 -->
				<div>
					<div class="test2-cgx" style="background:#EE2C2C;">
						<a href="DP_ValueOfSales1.jsp" style="">销售量</a>
					</div>
					<div class="test2-cgx" style="margin-left:3px">
						<a href="DP_Stock1.jsp" style="">库存</a>
					</div>
					<div class="test2-cgx" style="margin-left:3px">
						<a href="DP_Hangye1.jsp" style="">潮流预测</a>
					</div>
					<div class="test2-cgx" style="margin-left:3px;">
						<a href="DP_Country1.jsp" style="">国家市场</a>
					</div>
					<div class="test2-cgx" style="margin-left:3px;">
						<a href="DP_Find1.jsp" style="">商机发现</a>
					</div>
				</div>
				<!-- 红线 -->
				<div style="background:#ff0000;width:600px;height:2px;top:45px;position:relative;"></div>
				<!-- 内容 -->
				<div id="main" style="width: 600px; height: 400px;top:50px;position:relative;"></div>
				<script type="text/javascript">
					var myChart = echarts.init(document.getElementById('main'));

					//3.初始化，默认显示标题，图例和xy空坐标轴
					myChart.setOption({

						title : {
							text : ''
						},
						tooltip : {},

						legend : {

							data : [ '这一天','前七天' ,'前一个月']
						},toolbox: {
			                show : true,
			                feature : {
			                    mark : {show: true},
			                    dataView : {show: true, readOnly: true},
			                    magicType : {show: true, type: ['bar', 'line']},
			                    restore : {show: true},
			                    saveAsImage : {show: true}
			                }
			            },
			            calculable : true,
						xAxis : {
							data : []
						},
						yAxis : {},
						series : [ {
							name : '这一天',
							type : 'bar',
							data : []
						}, {
							name : '前七天',
							type : 'bar',
							data : []
						}, {
							name : '前一个月',
							type : 'bar',
							data : []
						} ]
					});

					//4.设置加载动画(非必须)
					myChart.showLoading(); //数据加载完之前先显示一段简单的loading动画

					//5.定义数据存放数组(动态变)
					var names = []; 
					var todaynums = []; 
					var weekendnums = []; 
					var monthnums = []; 
					//6.ajax发起数据请求
					$.ajax({
						type : "post",
						async : true, //异步请求（同步请求将会锁住浏览器，其他操作须等请求完成才可执行）
						url : "SalesServlet", //请求发送到TestServlet
						data : {},
						dataType : "json", //返回数据形式为json

						//7.请求成功后接收数据name+num两组数据
						success : function(result) {
							//result为服务器返回的json对象
							if (result) {
								//8.取出数据存入数组
								for (var i = 0; i < result.length; i++) {
									names.push(result[i].name); //迭代取出类别数据并填入类别数组
								}
								for (var i = 0; i < result.length; i++) {
									todaynums.push(result[i].todaynum); //迭代取出销量并填入销量数组
								}
								for (var i = 0; i < result.length; i++) {
									weekendnums.push(result[i].weekendnum); //迭代取出类别数据并填入类别数组
								}
								for (var i = 0; i < result.length; i++) {
									monthnums.push(result[i].monthnum); //迭代取出销量并填入销量数组
								}
								myChart.hideLoading(); //隐藏加载动画

								//9.覆盖操作-根据数据加载数据图表
								myChart.setOption({
									xAxis : {
										data : names
									},
									series : [ {
										// 根据名字对应到相应的数据
										name : '这一天',
										data : todaynums
									} , {
										name : '前七天',
										data : weekendnums
									}, {
										name : '前一个月',
										data : monthnums
									} ]
								});

							}

						},
						error : function(errorMsg) {
							//请求失败时执行该函数
							alert("图表请求数据失败!");
							myChart.hideLoading();
						}
					})
				</script>
			</div>
			</div>
			
		</div>
	

	<%@ include file="../components1/footer.jsp"%>