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
<title>我的营销</title>
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
<script type="text/javascript" src="../echarts/echarts.js"></script>
<script>
function control(obj) {
	var divDemo = document.getElementById('divDemo');
		divDemo.style.height = 650 + "px";
		divDemo.style.overflow = "hidden";
}
function change(obj) {
	alert('该活动已生成');
}
    	
    </script>
<style>
body {
	background: #F5F5F5;
}
#divDemo {
	width: 600px;
	height: 40px;
	overflow: hidden;
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
						style="color: #000000;">选择上架产品</a>
					 <a href="../S_Shop/comprehensive.jsp" class="list-group-item"
						style="background: #F5F5F5; color: #EE7621;">供应商综合能力</a>	
					 <a href="../S_Shop/manager_pro.jsp"
						class="list-group-item" style="color: #000000;">管理产品</a> 
					<a href="../S_Shop/marketing.jsp" class="list-group-item" 
					   style="color: #000000;">我的营销</a>
                    <a href="../S_Shop/marketing.jsp" class="list-group-item" 
					   style="color: #000000;">会员增值</a>
				</div>


			</div>
			<!-- 右边栏 -->
			<div class="col-md-9">
				<!-- 页面名称 -->
				<div>
					<p style="font-size: 18px; font-weight: bold;">综合能力雷达图</p>
				</div>
                <div id="main"
					style="width: 800px; height: 480px; top: 20px; position: relative;"></div>
				<script type="text/javascript">
				var dom = document.getElementById("main");
				var myChart = echarts.init(dom);
				var app = {};
				option = null;
				option = {
				    title: {
				        text: ''
				    },
				    tooltip: {},
				    legend: {
				        data: ['东莞市风格鞋业有限公司', '特威创体育新技术发展有限公司',
				        	'浙江威德康电气有限公司','深圳市瑞奇斯实业有限公司']
				    },
				    radar: {
				        // shape: 'circle',
				        name: {
				            textStyle: {
				                color: '#fff',
				                backgroundColor: '#999',
				                borderRadius: 3,
				                padding: [3, 5]
				           }
				        },
				        indicator: [
				           { name: '技术（Technology）', max: 100},
				           { name: '成本领先能力（Cost leadership）', max: 100},
				           { name: '交货供应能力（ Delivery capacity）', max: 100},
				           { name: '团队服务能力（Team service ability）', max: 100},
				           { name: '品质（Character）', max: 100}
				        ]
				    },
				    series: [{
				        name: '综合能力',
				        type: 'radar',
				        // areaStyle: {normal: {}},
				        data : [
				            {
				                value : [43, 80, 82, 67, 50, 91],
				                name : '东莞市风格鞋业有限公司'
				            },
				             {
				                value : [50, 76, 87, 86, 42, 90],
				                name : '特威创体育新技术发展有限公司'
				            },
				            {
				                value : [72, 85, 62, 83, 60, 70],
				                name : '浙江威德康电气有限公司'
				            },
				             {
				                value : [67, 76, 89, 96, 72, 80],
				                name : '深圳市瑞奇斯实业有限公司'
				            }
				        ]
				    }]
				};
				if (option && typeof option === "object") {
				    myChart.setOption(option, true);
				}
				</script>
			
				
			</div>

		</div>
	</div>

	<%@ include file="../components1/footer.jsp"%>