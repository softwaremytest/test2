<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!-- 横行导航栏 -->
<div class="top-container container">
	<!--导航栏wrapper一般设置一个固定大小这样子可以通过margin:auto;实现导航栏水平居中
     由于顶层容器是适应浏览器变化宽度，所以可以保持水平导航栏自适应浏览器窗口宽度保持居中-->
	<div class="top-wrapper wrapper">
		<!--这个是普通导航栏的容器，就是除了"立即登陆"和"注册新账号"-->
		<div class="nav top-left-nav">
			<!--开始实现列表-->
			<ul>
				<li class="first-nav"><span><a href="../index.jsp">我的借卖通</a> </span></li>
				<li class="first-nav"><span><a href="../products_Release.jsp">产品管理</a>
				</span>
					<ul class="sec-nav" style="background: #ffffff;">
						<li><a href="../products_Release.jsp">发布产品</a></li>
						<li><a href="../products_Management.jsp">管理产品</a></li>
					</ul></li>
				<li class="dropdown first-nav"><span><a href="../order/all_order.jsp">订单管理</a>
				</span>
					<ul class="sec-nav">
						<li><a href="../order/all_order.jsp">所有订单</a></li>
						<li><a href="#">退款&纠纷</a></li>
						<li><a href="#">订单批量导出</a></li>

					</ul></li>
				<li class="dropdown  first-nav"><span><a href="../Logistics/deliver.jsp">物流管理</a><i
						class="icon icon-arrow"></i> </span>
					<ul class="sec-nav">
						<li><a href="../Logistics/deliver.jsp">发货</a></li>
						<li><a href="../Logistics/logistic.jsp">物流信息</a></li>
					</ul></li>
				<li class="dropdown  first-nav" style="background: #FF8C69;"><span>
						<a href="../messages/messages.jsp">消息中心</a><i
						class="icon icon-arrow"></i>
				</span>
					<ul class="sec-nav">
						<li><a href="messages.jsp">站内信</a></li>
						<li><a href="#">垃圾箱</a></li>
						<li><a href="mes_terrace.jsp">系统消息</a></li>
						<li><a href="#">最新公告</a></li>
						<li><a href="messages.jsp">拒付通知</a></li>
						<li><a href="#">仲裁通知</a></li>
					</ul></li>
				<li class="first-nav"><span><a
						href="../DP_ValueOfSales.jsp">数据纵横</a> </span>
					<ul class="sec-nav">
						<li><a href="../DP_ValueOfSales.jsp">整体概况</a></li>
						<li><a href="../DP_replenishment.jsp">补货</a></li>
						<li><a href="../Blue/blue_industry.jsp">蓝海行业</a></li>
					</ul></li>
				<li class="first-nav"><span><a
						href="../account/account.jsp">账号及认证</a> </span>
					<ul class="sec-nav">
						<li><a href="../account/account.jsp">账号设置</a></li>
						<li><a href="../account/contact.jsp">联系人设置</a></li>
						<li><a href="../account/contact.jsp">年费发票</a></li>
						<li><a href="../account/contact.jsp">我的申请</a></li>
						<li><a href="../account/contact.jsp">商标注册</a></li>
						<li><a href="../account/contact.jsp">商标添加</a></li>
						<li><a href="../account/contact.jsp">商标资质申请</a></li>
					</ul></li>
			</ul>
		</div>
	</div>
</div>