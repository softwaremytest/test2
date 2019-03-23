<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>行业趋势</title>
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
						style="margin-left: 3px;">
						<a href="DP_Stock1.jsp" style="">库存</a>
					</div>
					<div class="test2-cgx" style="margin-left: 3px;background: #EE2C2C;">
						<a href="DP_Hangye1.jsp" style="">潮流预测</a>
					</div>
					<div class="test2-cgx" style="margin-left: 3px; ">
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
					style="width: 800px; height: 480px; top: 20px; position: relative;"></div>
				<script type="text/javascript">
				var dom = document.getElementById("main");
				var myChart = echarts.init(dom);
				var app = {};
				option = null;
				app.title = '行业趋势'

				var builderJson = {
				  "all": 10887,
				  "sales": {
				    "键盘": 2237,
				    "鼠标": 2164,
				    "耳机": 4561,
				    "摄像头": 7778,
				    "小音箱": 7355
				  },
				  "others": {
				    "衬衫": 2788,
				    "卫衣": 3575,
				    "羽绒服": 4400,
				    "手机": 5466,
				    "电子琴": 9166,
				    "钢琴": 3219
				  },
				  "ie": 9743
				};

				var salesJson = {
						"键盘": 3237,
					    "鼠标": 4164,
					    "耳机": 7561,
					    "摄像头": 5778,
					    "小音箱": 7355,
					    "衬衫": 3788,
					    "卫衣": 9575,
					    "羽绒服": 9450,
					    "手机": 9266,
					    "电子琴": 26,
					    "钢琴": 41
				};

				var themeJson = {
						"键盘": 324700,
					    "鼠标": 224468,
					    "耳机": 272196,
					    "摄像头": 420444,
					    "小音箱": 117904,
					    "衬衫": 139440,
					    "卫衣": 671100,
					    "羽绒服": 940000,
					    "手机": 13296334,
					    "电子琴": 390000,
					    "钢琴": 2435000
				};

				var waterMarkText = '行业趋势';

				var canvas = document.createElement('canvas');
				var ctx = canvas.getContext('2d');
				canvas.width = canvas.height = 100;
				ctx.textAlign = 'center';
				ctx.textBaseline = 'middle';
				ctx.globalAlpha = 0.08;
				ctx.font = '20px Microsoft Yahei';
				ctx.translate(50, 50);
				ctx.rotate(-Math.PI / 4);
				ctx.fillText(waterMarkText, 0, 0);

				option = {
				    backgroundColor: {
				        type: 'pattern',
				        image: canvas,
				        repeat: 'repeat'
				    },
				    tooltip: {},
				    title: [{
				        text: '销售量',
				        x: '25%',
				        textAlign: 'center'
				    }, {
				        text: '平台总销量',
				        x: '75%',
				        textAlign: 'center'
				    }, {
				        text: '平台总销售额',
				        x: '75%',
				        y: '50%',
				        textAlign: 'center'
				    }],
				    grid: [{
				        top: 50,
				        width: '50%',
				        bottom: '45%',
				        left: 10,
				        containLabel: true
				    }, {
				        top: '55%',
				        width: '50%',
				        bottom: 0,
				        left: 10,
				        containLabel: true
				    }],
				    xAxis: [{
				        type: 'value',
				        max: builderJson.all,
				        splitLine: {
				            show: false
				        }
				    }, {
				        type: 'value',
				        max: builderJson.all,
				        gridIndex: 1,
				        splitLine: {
				            show: false
				        }
				    }],
				    yAxis: [{
				        type: 'category',
				        data: Object.keys(builderJson.sales),
				        axisLabel: {
				            interval: 0,
				            rotate: 30
				        },
				        splitLine: {
				            show: false
				        }
				    }, {
				        gridIndex: 1,
				        type: 'category',
				        data: Object.keys(builderJson.others),
				        axisLabel: {
				            interval: 0,
				            rotate: 30
				        },
				        splitLine: {
				            show: false
				        }
				    }],
				    series: [{
				        type: 'bar',
				        stack: 'sale',
				        z: 3,
				        label: {
				            normal: {
				                position: 'right',
				                show: true
				            }
				        },
				        data: Object.keys(builderJson.sales).map(function (key) {
				            return builderJson.sales[key];
				        })
				    }, {
				        type: 'bar',
				        stack: 'sale',
				        silent: true,
				        itemStyle: {
				            normal: {
				                color: '#eee'
				            }
				        },
				        data: Object.keys(builderJson.sales).map(function (key) {
				            return builderJson.all - builderJson.sales[key];
				        })
				    }, {
				        type: 'bar',
				        stack: 'other',
				        xAxisIndex: 1,
				        yAxisIndex: 1,
				        z: 3,
				        label: {
				            normal: {
				                position: 'right',
				                show: true
				            }
				        },
				        data: Object.keys(builderJson.others).map(function (key) {
				            return builderJson.others[key];
				        })
				    }, {
				        type: 'bar',
				        stack: 'other',
				        silent: true,
				        xAxisIndex: 1,
				        yAxisIndex: 1,
				        itemStyle: {
				            normal: {
				                color: '#eee'
				            }
				        },
				        data: Object.keys(builderJson.others).map(function (key) {
				            return builderJson.all - builderJson.others[key];
				        })
				    }, {
				        type: 'pie',
				        radius: [0, '30%'],
				        center: ['75%', '25%'],
				        data: Object.keys(salesJson).map(function (key) {
				            return {
				                name: key.replace('', ''),
				                value: salesJson[key]
				            }
				        })
				    }, {
				        type: 'pie',
				        radius: [0, '30%'],
				        center: ['75%', '80%'],
				        data: Object.keys(themeJson).map(function (key) {
				            return {
				                name: key.replace('', ''),
				                value: themeJson[key]
				            }
				        })
				    }]
				};
				if (option && typeof option === "object") {
				    myChart.setOption(option, true);
				}
				</script>
			</div>
		</div>

	</div>
	<%@ include file="../components/footer.jsp"%>