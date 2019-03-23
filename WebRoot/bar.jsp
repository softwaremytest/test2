<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>echarts测试</title>
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
<script type="text/javascript" src="echarts/echarts.js"></script>
<!-- 引入jquery.js -->
<script type="text/javascript" src="jquery-3.3.1/jquery-3.3.1.min.js"></script>
</head>

<body>
	<div style="height: 100px; background: #ffffff"></div>
	<!-- 顶部导航栏 -->
	<%@ include file="nav.jsp"%>
	<!-- 内容 -->
	<div class="container" style="position: relative; top: 50px">
		<!-- 列表组 -->
		<div class="row">
			<!-- 左边栏 -->
			<div class="col-md-3" style="left: 35px;">
				<div class="list-group" id="shu-daohanglan" style="width: 200px;">
					<a href="bar.jsp" class="list-group-item" id="shu-daohanglan-title"
						style="font-size: 18px; font-weight: bold;">数据纵横 </a>
					 <a href="#" class="list-group-item"
						style="background: #F5F5F5; color: #EE7621;">整体概况</a>
                     <a href="#" class="list-group-item"
						style=" color: #000000;">商品分析</a>
				</div>
			</div>
             <!-- 右边栏 -->
			<div class="col-md-9" style="margin: -10% 0% 0% 30%;">

				<!-- 2.为ECharts准备一个具备大小（宽高）的Dom -->
				<div id="main" style="width: 600px; height: 400px;"></div>


				<script type="text/javascript">
					var myChart = echarts.init(document.getElementById('main'));

					//3.初始化，默认显示标题，图例和xy空坐标轴
					myChart.setOption({

						title : {
							text : 'ajax动态获取数据'
						},
						tooltip : {},

						legend : {

							data : [ '销售量' ]
						},
						xAxis : {
							data : []
						},
						yAxis : {},
						series : [ {
							name : '销售量',
							type : 'line',
							data : []
						} ]
					});

					//4.设置加载动画(非必须)
					myChart.showLoading(); //数据加载完之前先显示一段简单的loading动画

					//5.定义数据存放数组(动态变)
					var names = []; //建立一个类别数组（实际用来盛放X轴坐标值）
					var nums = []; //建立一个销量数组（实际用来盛放Y坐标值）

					//6.ajax发起数据请求
					$.ajax({
						type : "post",
						async : true, //异步请求（同步请求将会锁住浏览器，其他操作须等请求完成才可执行）
						url : "BarServlet", //请求发送到TestServlet
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
									nums.push(result[i].num); //迭代取出销量并填入销量数组
								}

								myChart.hideLoading(); //隐藏加载动画

								//9.覆盖操作-根据数据加载数据图表
								myChart.setOption({
									xAxis : {
										data : names
									},
									series : [ {
										// 根据名字对应到相应的数据
										name : '销量',
										data : nums
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
</body>
</html>