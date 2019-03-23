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
		<%@ include file="../components/header1.jsp"%>
	</div>
	<!-- 顶部导航栏 -->
	<%@ include file="components/dpnav.jsp"%>
	<!-- 内容 -->
	<div class="container" style="position: relative; top: 50px;height:600px;">
		<!-- 列表组 -->
		<div class="row">
			<!-- 左边栏 -->
			<%@ include file="components/dpleft.jsp"%>
             <!-- 右边栏 -->
			<div class="col-md-9" >
	            <!-- 分类 -->
				<div>
					<div class="test2-cgx" style="margin-left:3px;">
						<a href="DP_ValueOfSales.jsp" style="">销售量</a>
					</div>
					<div class="test2-cgx" style="margin-left:3px">
						<a href="DP_Stock.jsp" style="">库存</a>
					</div>
					<div class="test2-cgx" style="margin-left:3px">
						<a href="DP_Hangye.jsp" style="">行业趋势</a>
					</div>
					<div class="test2-cgx" style="margin-left:3px;">
						<a href="DP_Country.jsp" style="">海外市场</a>
					</div>
					<div class="test2-cgx" style="background:#EE2C2C;"">
						<a href="DP_Find.jsp" style="">商机发现</a>
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
							text: 'TOP热销产品词'
					    },
					    tooltip : {
					        trigger: 'axis'
					    },
					    legend: {
					        data:['这个月','上个月']
					    },
					    toolbox: {
					        show : true,
					        feature : {
					            dataView : {show: true, readOnly: true},
					            magicType : {show: true, type: ['line', 'bar']},
					            restore : {show: true},
					            saveAsImage : {show: true}
					        }
					    },
					    calculable : true,
					    xAxis : [
					        {
					            type : 'category',
					            data : ['外套','休闲鞋','鼠标','键盘','电脑','手机','零食','玩具']
					        }
					    ],
					    yAxis : [
					        {
					            type : 'value'
					        }
					    ],
					    series : [
					        {
					            name:'这个月',
					            type:'bar',
					            data:[1523, 1423, 1422, 1304, 1245, 1004, 802, 520]
					           
					        },
					        {
					            name:'上个月',
					            type:'bar',
					            data:[1425, 1245, 1457, 1345, 1240, 1204, 205, 420]
					           
					        }
					    ]
					
					})
				</script>
			</div>
			</div>
			
		</div>
	

	<%@ include file="../components/footer.jsp"%>