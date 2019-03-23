<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>国家市场</title>
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
	<div class="container" style="position: relative; top: 50px;height:900px;">
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
						style="margin-left: 3px;">
						<a href="DP_Stock1.jsp" style="">库存</a>
					</div>
					<div class="test2-cgx" style="margin-left: 3px">
						<a href="DP_Hangye1.jsp" style="">潮流预测</a>
					</div>
					<div class="test2-cgx" style="margin-left: 3px; background: #EE2C2C;">
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
					style="width: 1000px; height: 700px; top: 50px; position: relative;"></div>
				<script type="text/javascript">
					var myChart = echarts.init(document.getElementById('main'));

					//3.初始化，默认显示标题，图例和xy空坐标轴
					myChart.setOption({
						tooltip : {
							trigger : 'item',
							formatter : "{a} <br/>{b}: {c} ({d}%)"
						},
						legend : {
							orient : 'vertical',
							x : 'left',
							data : [ '亚洲', '欧洲', '北美洲', '南美洲','非洲','大洋洲','东亚','东南亚','南亚','西亚',
									'中亚','北亚','北欧', '南欧', '西欧', '中欧', '东欧','北美东部','北美中部','北美西部',
									'北美其他','巴西','阿根廷','南美其他','东非','西非','北非','南非','中非','西大洋洲','其他大洋洲地区']
						},
						series : [
							{
								name : '来源',
								type : 'pie',
								selectedMode : 'single',
								radius : [ 0, '30%' ],
                                        label : {
										normal : {
												position : 'inner'
										   }
										},
										labelLine : {
												normal : {
													show : false
												}
										},
										data : [ {
											value : 4557,
											name : '亚洲',
											selected : true
										}, {
											value : 16797,
											name : '欧洲'
										}, {
											value : 1548,
											name : '北美洲'
										} , {
											value : 548,
											name : '南美洲'
										} , {
											value : 488,
											name : '非洲'
										} , {
											value : 1480,
											name : '大洋洲'
										} ]
										},
										{
											name : '来源',
											type : 'pie',
											radius : [ '40%', '55%' ],
											label : {
												normal : {
													formatter : '{a|{a}}{abg|}\n{hr|}\n  {b|{b}：}{c}  {per|{d}%}  ',
													backgroundColor : '#eee',
													borderColor : '#aaa',
													borderWidth : 1,
													borderRadius : 4,
													// shadowBlur:3,
													// shadowOffsetX: 2,
													// shadowOffsetY: 2,
													// shadowColor: '#999',
													// padding: [0, 7],
													rich : {
														a : {
															color : '#999',
															lineHeight : 22,
															align : 'center'
														},
														// abg: {
														//     backgroundColor: '#333',
														//     width: '100%',
														//     align: 'right',
														//     height: 22,
														//     borderRadius: [4, 4, 0, 0]
														// },
														hr : {
															borderColor : '#aaa',
															width : '100%',
															borderWidth : 0.5,
															height : 0
														},
														b : {
															fontSize : 16,
															lineHeight : 33
														},
														per : {
															color : '#eee',
															backgroundColor : '#334455',
															padding : [ 2, 4 ],
															borderRadius : 2
														}
													}
												}
											},
											data : [ {
												value : 884,
												name : '东亚'
											},  {
												value : 716,
												name : '东南亚'
											}, {
												value : 415,
												name : '南亚'
											}, {
												value : 912,
												name : '西亚'
											}, {
												value : 813,
												name : '中亚'
											}, {
												value : 717,
												name : '北亚'
											}, {
												value : 3000,
												name : '北欧'
											}, {
												value : 4200,
												name : '南欧'
											}, {
												value : 4300,
												name : '西欧'
											}, {
												value : 2700,
												name : '中欧'
											},{
												value : 2597,
												name : '东欧'
											}, {
												value : 351,
												name : '北美东部'
											}, {
												value : 449,
												name : '北美中部'
											}, {
												value : 400,
												name : '北美西部'
											}, {
												value : 348,
												name : '北美其他'
											}, {
												value : 251,
												name : '巴西'
											}, {
												value : 147,
												name : '阿根廷'
											}, {
												value : 150,
												name : '南美其他'
											}, {
												value : 71,
												name : '东非'
											}, {
												value : 92,
												name : '西非'
											} , {
												value : 43,
												name : '北非'
											}, {
												value : 201,
												name : '南非'
											}  , {
												value : 81,
												name : '中非'
											} , {
												value : 480,
												name : '西大洋洲'
											}  , {
												value : 1000,
												name : '其他大洋洲地区'
											}]
										} ]

							});
				</script>
			</div>
		</div>

	</div>
<%@ include file="../components/footer.jsp"%>