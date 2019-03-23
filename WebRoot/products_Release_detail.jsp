<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="zh-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>借卖通</title>

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
<link rel="stylesheet" type="text/css" href="css/main.css" />
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

#shu-daohanglan a{
 font-size: 14px;
 height:43px;
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
<script>
    	function change(obj){
    		alert('（一）撇脂定价策略\n'+'所谓撇脂定价是指在产品生命周期的最初阶段，把产品的价格定得很高，'+
    				'以攫取最大利润。\n撇脂定价的条件：\n（1）市场有足够的购买者，他们的需求缺乏弹性，'+
    				'即使把价格定得很高，市场需求也不会大量减少。\n（2）高价使需求减少，但不致抵消高价所'+
    				'带来的利益。\n（3）在高价情况下，仍然独家经营，别无竞争者。高价使人们产生这种产品是'+
    				'高档产品的印象。 \n（二）渗透定价策略 　　\n所谓渗透定价是指企业把其创新产品的价格定得相'+
    				'对较低，以吸引大量顾客，提高市场占有率。 \n渗透定价的条件：\n（1）市场需求对价格极为敏'+
    				'感，低价会刺激市场需求迅速增长。 \n（2）企业的生产成本和经营费用会随着生产经营经验的增加'+
    				'而下降。 \n（3）低价不会引起实际和潜在的竞争。\n（三）满意定价策略 \n满意定价'+
    				'策略是一种介于撇脂定价策略和渗透定价策略之间的价格策略。其所定的价格比撇脂价格低，而比渗'+
    				'透价格要高，是一种中间价格。这种定价策略由于能使生产者和顾客都比较满意而得名。有时它又被'+
    				'称为“君子价格”或“温和价格”。');
    		
		}
    	
    </script>
</head>

<body>

	<div  style="height:45px;">
		<%@ include file="../components/header1.jsp"%>
	</div>

	<!-- 顶部导航栏 -->
	<%@ include file="nav.jsp"%>

	<!-- 内容 -->
	<div class="container" style="position:relative;top:20px;height:1500px;">
		<!-- 列表组 -->
		<div class="row">

			<!-- 左边栏 -->
			<div class="col-md-3" style="left:-35px;">

				<!-- 树形导航栏 -->
				<div class="list-group" id="shu-daohanglan" style="width:200px;">
					<a href="#" class="list-group-item" id="shu-daohanglan-title"
						style="font-size:18px;font-weight:bold;">产品信息 </a> <a
						href="products_Release.jsp" class="list-group-item"
						style="background: #F5F5F5;color:#EE7621;">发布产品</a> <a
						href="products_Management.jsp" class="list-group-item">管理产品</a> 
				</div>

			</div>

			<!-- 右边栏 -->
			<div class="col-md-9" style="left:-80px;">

				<!-- 内容  -->
				<div style="width:1000px;height:700px;margin-bottom:20px;">

					<!-- 页面名称 -->
					<div
						style="background:#ffffff;width:1000px;height:90px;padding-left:15px;padding-top:15px;">
						<p style="font-size:18px;font-weight:bold;">发布产品</p>
						<div style="float:left;margin-right:50px;">
							<p style="font-size:14px;">您当前选择的类目是:女装 >> 连衣裙</p>
						</div>
						<div style="">
							<button type="button" class="btn btn-default" data-toggle="modal"
								data-target="#exampleModal" data-whatever="@mdo"
								style="font-size:12px;">重选类目</button>
						</div>
					</div>
					<!-- 类似产品导入模态框 -->
					<div class="modal fade" id="exampleModal" tabindex="-1"
						role="dialog" aria-labelledby="exampleModalLabel">
						<div class="modal-dialog" role="document" style="width:875px;">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
									<h4 class="modal-title" id="exampleModalLabel">重选类目</h4>
								</div>
								<div class="modal-body" style="height:550px;">

									<div class="form-group" style="margin-left:-15px;">
										<div class="col-sm-5" style="width:223px;">
											<input type="text" class="form-control" id="text1" name="xm"
												pattern="[a-Z0-9]{1,10}" required="required" placeholder="">
										</div>
										<div class="col-sm-2" style="width:150px;left:-20px;">
											<button type="submit" class="btn btn-default"
												style="background:#EE2C2C;color:#ffffff">查找类目</button>
										</div>
									</div>
									<!-- 类目 -->
									<%@ include file="products_classification.jsp"%>

								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-default"
										data-dismiss="modal">关闭</button>
									<button type="button" class="btn btn-primary">确认</button>
								</div>
							</div>
						</div>
					</div>

					<!--产品基本属性  -->
					<div style="background:#ffffff;margin-top:20px;padding:15px;">
						<p style="font-size:18px;font-weight:bold;">产品基本属性</p>

						<div style="margin-left:-80px;">
							<form class="form-horizontal" id="form1" name="form1"
								method="post" action="G_ReleaseProduct">

								<!--产品属性  -->
								<div class="form-group">
									<label for="zy" class="col-sm-3 control-label">产品属性</label>
									<div class="col-sm-7" style="background:#F5F5F5;">

										<div class="form-group" style="margin-top:10px;">
											<label for="brand" class="col-sm-2 control-label">品牌</label>
											<div class="col-sm-3">
												<select class="form-control" name="brand" style="width:200px;">
													<option value="None">None(无品牌)</option>
                                                    <option value="None">香奈儿</option>
                                                    <option value="None">adidas</option>
                                                    <option value="None">范思哲</option>
												</select>
											</div>
										</div>
										<div class="form-group">
											<label for="syrq" class="col-sm-2 control-label">适用人群</label>
											<div class="col-sm-6">
												<label class="checkbox-inline"> <input
													type="checkbox" name="syrq" value="Children">Children</label>
												<label class="checkbox-inline"> <input
													type="checkbox" name="syrq" value="Adult">Adult</label> <label
													class="checkbox-inline"> <input type="checkbox"
													name="syrq" value="older">older</label>
											</div>
										</div>
										<div class="form-group">
											<label for="sex" class="col-sm-2 control-label">性别</label>
											<div class="col-sm-6">
												<label class="checkbox-inline"> <input
													type="checkbox" name="sex" value="man">man</label> <label
													class="checkbox-inline"> <input type="checkbox"
													name="sex" value="woman">woman</label>
											</div>
										</div>
										<div class="form-group">
											<label for="material" class="col-sm-2 control-label">材质</label>
											<div class="col-sm-10">
												<label class="checkbox-inline"> <input
													type="checkbox" name="material" value="SILK">SILK</label> <label
													class="checkbox-inline"> <input type="checkbox"
													name="material" value="Cotton(棉)">Cotton(棉)</label> <label
													class="checkbox-inline"> <input type="checkbox"
													name="material" value="Polyester(涤纶)">Polyester(涤纶)</label>
												<label class="checkbox-inline"> <input
													type="checkbox" name="material" value="Nylon(尼龙)">Nylon(尼龙)</label>
												<label class="checkbox-inline"> <input
													type="checkbox" name="material" value="Fur(皮草)">Fur(皮草)</label>
												<label class="checkbox-inline"> <input
													type="checkbox" name="material" value="Faux Fur(假皮草)">Faux
													Fur(假皮草)</label> <label class="checkbox-inline"> <input
													type="checkbox" name="material" value="Genuine Leather(真皮)">Genuine
													Leather(真皮)</label> <label class="checkbox-inline"> <input
													type="checkbox" name="material"
													value="Synthetic Leather(人造皮革)">Synthetic
													Leather(人造皮革)</label> <label class="checkbox-inline"> <input
													type="checkbox" name="material" value="Wool(毛)">Wool(毛)</label>
												<label class="checkbox-inline"> <input
													type="checkbox" name="material" value="Linen(亚麻)">Linen(亚麻)</label>
												<label class="checkbox-inline"> <input
													type="checkbox" name="material" value="Cashmere(羊绒)">Cashmere(羊绒)</label>
												<label class="checkbox-inline"> <input
													type="checkbox" name="material" value="Lycra(莱卡)">Lycra(莱卡)</label>
												<label class="checkbox-inline"> <input
													type="checkbox" name="material" value="Acetate(醋酸纤维)">Acetate(醋酸纤维)</label>
												<label class="checkbox-inline"> <input
													type="checkbox" name="material" value="Acrylic(腈纶)">Acrylic(腈纶)</label>
												<label class="checkbox-inline"> <input
													type="checkbox" name="material" value="Modal(莫代尔)">
													Modal(莫代尔)</label> <label class="checkbox-inline"> <input
													type="checkbox" name="material" value="Rayon(人造丝)">Rayon(人造丝)</label>
												<label class="checkbox-inline"> <input
													type="checkbox" name="material" value="Spandex(氨纶)">Spandex(氨纶)</label>
												<label class="checkbox-inline"> <input
													type="checkbox" name="material" value="Bamboo Fiber(竹纤维)">Bamboo
													Fiber(竹纤维)</label>
											</div>
										</div>
										<div class="form-group" style="margin-top:10px;">
											<label for="length" class="col-sm-2 control-label">裙长</label>
											<div class="col-sm-5">
												<select class="form-control" name="length">
													<option value="Above Knee,mini(迷你裙)">Above
														Knee,mini(迷你裙)</option>
													<option value="Knee-Lenght(及膝裙)">Knee-Lenght(及膝裙)</option>
													<option value="Ankle-Lenght(及踝裙)">Ankle-Lenght(及踝裙)</option>
													<option value="Mid-Calf(及小腿肚群)">Mid-Calf(及小腿肚裙)</option>
												</select>
											</div>
										</div>
										<div class="form-group" style="margin-top:10px;">
											<label for="style" class="col-sm-2 control-label">风格</label>
											<div class="col-sm-5">
												<select class="form-control" name="style">
													<option value="Casual(休闲款)">Casual(休闲款)</option>
													<option value="Formal(正装)">Formal(正装)</option>
													<option value="Bohemian(波西米亚)">Bohemian(波西米亚)</option>
													<option value="Active(运动)">Active(运动)</option>
													<option value="Novelty(新奇)">Novelty(新奇)</option>
													<option value="Military(军旅风)">Military(军旅风)</option>
													<option value="England Style(英伦)">England
														Style(英伦)</option>
													<option value="Chinese Style(中国风)">Chinese
														Style(中国风)</option>
												</select>
											</div>
										</div>
										<div class="form-group" style="margin-top:10px;">
											<label for="decorate" class="col-sm-2 control-label">装饰</label>
											<div class="col-sm-5">
												<select class="form-control" name="decorate">
													<option value="Beading(串珠)">Beading(串珠)</option>
													<option value="Bow(蝴蝶结)">Bow(蝴蝶结)</option>
													<option value="Button(按键)">Button(按键)</option>
													<option value="Draped(垂褶)">Draped(垂褶)</option>
													<option value="Feathers(羽毛)">Feathers(羽毛)</option>
													<option value="Fur(皮草)">Fur(皮草)</option>
													<option value="Flowers(花)">Flowers(花)</option>
													<option value="Lace(蕾丝)">Lace(蕾丝)</option>
												</select>
											</div>
										</div>
										<div class="form-group" style="margin-top:10px;">
											<label for="type" class="col-sm-2 control-label">群型</label>
											<div class="col-sm-5">
												<select class="form-control" name="type">
													<option value="A-line(A字型)">A-line(A字型)</option>
													<option value="Beach(沙滩式)">Beach(沙滩式)</option>
													<option value="Straight(直筒裙)">Straight(直筒裙)</option>
													<option value="Sheath(紧身式)">Sheath(紧身式)</option>
													<option value="Ball Gown(蓬蓬裙)">Ball Gown(蓬蓬裙)</option>
													<option value="Asymmetrical(不对称)">Asymmetrical(不对称)</option>
												</select>
											</div>
										</div>
										<div class="form-group" style="margin-top:10px;">
											<label for="sleeve length" class="col-sm-2 control-label">袖长(cm)</label>
											<div class="col-sm-5">
												<select class="form-control" name="sleeve length">
													<option value="Fill(长袖)">Fill(长袖)</option>
													<option value="Three Quarter(七分袖)">Three
														Quarter(七分袖)</option>
													<option value="Half(五分袖)">Half(五分袖)</option>
													<option value="Short(短袖)">Short(短袖)</option>
													<option value="Sleeveless(无袖)">Sleeveless(无袖)</option>
												</select>
											</div>
										</div>
										<div class="form-group" style="margin-top:10px;">
											<label for="sleeve type" class="col-sm-2 control-label">袖型</label>
											<div class="col-sm-5">
												<select class="form-control" name="sleeve type">
													<option value="Regular(常规袖)">Fill(长袖)</option>
													<option value="Batwing Sleeve(蝙蝠袖)">Three
														Quarter(七分袖)</option>
													<option value="Flare Sleeve(喇叭袖)">Flare
														Sleeve(喇叭袖)</option>
												</select>
											</div>
										</div>
										<div class="form-group" style="margin-top:10px;">
											<label for="Collar type" class="col-sm-2 control-label">领型</label>
											<div class="col-sm-5">
												<select class="form-control" name="Collar type">
													<option value="V-Neck(V领)">V-Neck(V领)</option>
													<option value="Turtleneck(高领)">Turtleneck(高领)</option>
													<option value="O-neck(圆领)">O-neck(圆领)</option>
												</select>
											</div>
										</div>

									</div>
								</div>

								<!--产品标题  -->
								<div class="form-group" style="padding-top:0px;">
									<label for="title" class="col-sm-3 control-label">产品标题</label>
									<div class="col-sm-6">
										<input type="text" class="form-control" id="text1"
											name="title" pattern="[a-Z0-9]{1,10}" required="required"
											placeholder="">
									</div>
								</div>

								<!--产品图片  -->
								<div class="form-group" style="padding-top:0px;">
									<label for="title" class="col-sm-3 control-label">产品图片</label>
									<div class="col-sm-8" style="border:solid 1px #708090;left:15px;">
									<div>
										<input type="file" name="file0" id="file0" multiple="multiple" style="margin-top:10px;"/>
									</div>
										<div class="row" style="margin-top:10px;">
											<div class="col-sm-6 col-md-4">
												<div class="thumbnail">
													<img src="img/common/picture.png" alt="" id="img1" style="width:20rem;height:20rem;">
													<div class="caption">
														<p>
															<a href="#" class="btn btn-primary" role="button">下载</a>
															<a href="#" class="btn btn-default" role="button" style="margin-left:70px;">删除</a>
														</p>
													</div>
												</div>
											</div>
											<div class="col-sm-6 col-md-4">
												<div class="thumbnail">
													<img src="img/common/picture.png" alt="" id="img1" style="width:20rem;height:20rem;">
												</div>
											</div>
											<div class="col-sm-6 col-md-4">
												<div class="thumbnail">
													<img src="img/common/picture.png" alt="" id="img1" style="width:20rem;height:20rem;">
												</div>
											</div>
										</div>
									</div>
								</div>
								<!--选择图片js语言  -->
								<script>
											$("#file0")
													.change(
															function() {
																var objUrl = getObjectURL(this.files[0]);//获取文件信息  
																console
																		.log("objUrl = "
																				+ objUrl);
																if (objUrl) {
																	$("#img1")
																			.attr(
																					"src",
																					objUrl);
																}
															});
											function getObjectURL(file) {
												var url = null;
												if (window.createObjectURL != undefined) {
													url = window
															.createObjectURL(file);
												} else if (window.URL != undefined) { // mozilla(firefox)  
													url = window.URL
															.createObjectURL(file);
												} else if (window.webkitURL != undefined) { // webkit or chrome  
													url = window.webkitURL
															.createObjectURL(file);
												}
												return url;
											}
										</script>
								
								<!--最小计量单位  -->
								<div class="form-group" style="padding-top:0px;">
									<label for="unit" class="col-sm-3 control-label">最小计量单位</label>
									<div class="col-sm-2">
												<select class="form-control" name="unit">
													<option value="件/个(price/prices)">件/个(price/prices)</option>
													<option value="包(pack/packs)">包(pack/packs)</option>
													<option value="双(pair)">双(pair)</option>
												</select>
											</div>
								</div>
								
								<!--库存  -->
								<div class="form-group" style="padding-top:0px;">
									<label for="Stock" class="col-sm-3 control-label">库存</label>
									<div class="col-sm-2">
										<input type="text" class="form-control" id="text1"
											name="Stock" pattern="[a-Z0-9]{1,10}" required="required"
											placeholder="">
									</div>
								</div>
								
								<!--零售价  -->
								<div class="form-group" style="padding-top:0px;">
									<label for="retail price" class="col-sm-3 control-label">零售价</label>
									<div class="col-sm-2">
										<input type="text" class="form-control" id="text1"
											name="retailprice" pattern="[a-Z0-9]{1,10}" required="required"
											placeholder="">
									</div>
									<label for="retail price" class="col-sm-1 control-label" style="left:-70px;">元</label>
									<input type="button" value="智能定价推荐"  class="btn btn-default"
									style="color:red;position:relative;left:-40px;" id="b" onclick="change(this)" />
									<p style="position:relative;left:620px;top:-30px;">(提供三种定价策略)</p>
								</div>
								
								<hr/>

								<div class="form-group">
									<div class="col-sm-offset-5 col-sm-7">
										<button type="submit" class="btn btn-primary" style="width:80px;">提交</button>
										<button type="submit" class="btn btn-default" style="width:80px;margin-left:80px;">预览</button>
									</div>
								</div>

							</form>
						</div>


					</div>




				</div>

			</div>

		</div>
	</div>

	<%@ include file="components/footer.jsp"%>
