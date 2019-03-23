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
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">


<!-- Custom styles for this template -->
<link
	href="https://fonts.googleapis.com/css?family=Playfair+Display:700,900"
	rel="stylesheet">
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
	<div style="height: 45px;">
		<%@ include file="../components/header1.jsp"%>
	</div>
	<!-- 顶部导航栏 -->
	<%@ include file="components/dpnav.jsp"%>
	<!-- 内容 -->
	<div class="container"
		style="position: relative; top: 50px; height: 800px;">
		<!-- 列表组 -->
		<div class="row">
			<!-- 左边栏 -->
			<div class="col-md-3" style="left: 35px;">
				<div class="list-group" id="shu-daohanglan" style="width: 200px;">
					<a href="DP_ValueOfSales.jsp" class="list-group-item"
						id="shu-daohanglan-title"
						style="font-size: 18px; font-weight: bold;">数据纵横 </a> <a
						href="DP_ValueOfSales.jsp" class="list-group-item"
						style="color: #000000;">整体概况</a> <a
						href="DP_replenishment.jsp" class="list-group-item"
						style="background: #F5F5F5; color: #EE7621;">补货</a>
						<a href="Blue/blue_industry.jsp" class="list-group-item" style="color: #000000;">蓝海行业</a>
				</div>
			</div>
			<!-- 右边栏 -->
			<div class="col-md-9">

				<div id="main"
					style="width: 540px; height: 400px; top: 10px; position: relative; left: -40px;"></div>
				<script type="text/javascript">
					var myChart = echarts.init(document.getElementById('main'));

					//3.初始化，默认显示标题，图例和xy空坐标轴
					myChart.setOption({

						title : {
							text : '销售量'
						},
						tooltip : {},

						legend : {

							data : [ '这一天', '前七天', '前一个月' ]
						},
						toolbox : {
							show : true,
							feature : {
								mark : {
									show : true
								},
								dataView : {
									show : true,
									readOnly : true
								},
								magicType : {
									show : true,
									type : [ 'bar', 'line' ]
								},
								restore : {
									show : true
								},
								saveAsImage : {
									show : true
								}
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
									}, {
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
			<p
				style="width: 40px; font-weight: bold; font-size: 17px; position: relative; left: 860px; top: -390px;">库存</p>
			<div id="main1"
				style="width: 350px; height: 400px; top: -420px; left: 920px; position: relative;"></div>
			<script type="text/javascript">
				var myChart1 = echarts.init(document.getElementById('main1'));

				//3.初始化，默认显示标题，图例和xy空坐标轴

				setTimeout(function() {

					option = {

						legend : {},
						tooltip : {
							trigger : 'axis',
							showContent : false
						},
						dataset : {
							source : [
									[ 'product', '1月', '2月', '3月', '4月', '5月',
											'6月' ],
									[ '键盘', 41, 30, 65, 53, 83, 98 ],
									[ '鼠标', 86, 92, 85, 83, 73, 55 ],
									[ '耳机', 24, 67, 79, 86, 65, 82 ],
									[ '摄像头', 55, 67, 69, 72, 53, 39 ],
									[ '小音箱', 57, 67, 67, 77, 57, 37 ] ]
						},
						xAxis : {
							type : 'category'
						},
						yAxis : {
							gridIndex : 0
						},
						grid : {
							top : '55%'
						},
						series : [ {
							type : 'line',
							smooth : true,
							seriesLayoutBy : 'row'
						}, {
							type : 'line',
							smooth : true,
							seriesLayoutBy : 'row'
						}, {
							type : 'line',
							smooth : true,
							seriesLayoutBy : 'row'
						}, {
							type : 'line',
							smooth : true,
							seriesLayoutBy : 'row'
						}, {
							type : 'line',
							smooth : true,
							seriesLayoutBy : 'row'
						}, {
							type : 'pie',
							id : 'pie',
							radius : '30%',
							center : [ '50%', '25%' ],
							label : {
								formatter : '{b}: {@1月} ({d}%)'
							},
							encode : {
								itemName : 'product',
								value : '1月',
								tooltip : '1月'
							}
						} ]
					};

					myChart1.on('updateAxisPointer', function(event) {
						var xAxisInfo = event.axesInfo[0];
						if (xAxisInfo) {
							var dimension = xAxisInfo.value + 1;
							myChart.setOption({
								series : {
									id : 'pie',
									label : {
										formatter : '{b}: {@[' + dimension
												+ ']} ({d}%)'
									},
									encode : {
										value : dimension,
										tooltip : dimension
									}
								}
							});
						}
					});

					myChart1.setOption(option);

				});
			</script>
		</div>
		<div
			style="width: 120px; position: relative; left: 300px; top: -420px;">
			<img src="img/repl.jpg" style="height: 300px; width: 480px;" />
		</div>
		<div
			style="width: 240px; position: relative; left: 800px; top: -710px;">
			<p>总需求量=(采购周期+仓库周转周期+物流周期+安全库存天数+采购间隔天数) *日均销量</p>
		</div>
	</div>




	<%@ include file="../components/footer.jsp"%>