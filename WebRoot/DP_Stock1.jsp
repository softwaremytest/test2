<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>库存</title>
<!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet" href="bootstrap3/css/bootstrap.min.css">



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
<link href="css/se-footer.css" rel="stylesheet" type="text/css" />
</head>
<body>


	<div  style="height:45px;">
		<%@ include file="../components1/header1.jsp"%>
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
			<div class="col-md-9">
				<!-- 分类 -->
				<div>
					<div class="test2-cgx" style="">
						<a href="DP_ValueOfSales1.jsp" style="">销售量</a>
					</div>
					<div class="test2-cgx"
						style="margin-left: 3px; background: #EE2C2C;">
						<a href="DP_Stock1.jsp" style="">库存</a>
					</div>
					<div class="test2-cgx" style="margin-left: 3px">
						<a href="DP_Hangye1.jsp" style="">潮流预测</a>
					</div>
					<div class="test2-cgx" style="margin-left: 3px;">
						<a href="DP_Country1.jsp" style="">国家市场</a>
					</div>
					<div class="test2-cgx" style="margin-left: 3px;">
						<a href="DP_Find1.jsp" style="">商机发现</a>
					</div>
				</div>
				<!-- 红线 -->
				<div
					style="background: #ff0000; width: 600px; height: 2px; top: 45px; position: relative;"></div>
				<!-- 内容 -->
				<div id="main"
					style="width: 600px; height: 400px; top: 50px; position: relative;"></div>
				<script type="text/javascript">
					var myChart = echarts.init(document.getElementById('main'));

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
										[ 'product', '1月', '2月', '3月','4月', '5月', '6月' ],
										[ '键盘', 141, 230, 65,53, 63, 98 ],
										[ '鼠标', 186, 192, 85, 53,73, 75 ],
										[ '耳机', 124, 167, 179,82, 65, 42 ],
										[ '摄像头', 155, 167, 69,72, 83, 39] ,
										[ '小音箱', 157, 67, 127,77, 54, 37] 
								]
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

						myChart.on('updateAxisPointer', function(event) {
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

						myChart.setOption(option);

					});
				</script>
			</div>
		</div>

	</div>
<%@ include file="../components/footer.jsp"%>