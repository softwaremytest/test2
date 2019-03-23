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
				<li class="first-nav" style="background: #FF8C69;"><span><a href="index1.jsp">我的借卖通</a> </span></li>
				<li class="first-nav"><span><a href="S_Shop/select.jsp">店铺管理</a>
				</span>
					<ul class="sec-nav" style="background: #ffffff;">
						<li><a href="S_Shop/select.jsp">选择上架产品</a></li>
						<li><a href="S_Shop/comprehensive.jsp">供应商综合能力</a></li>
						<li><a href="S_Shop/manager_pro.jsp">管理产品</a></li>
						<li><a href="S_Shop/marketing.jsp">我的营销</a></li>
						<li><a href="S_Shop/marketing.jsp">会员增值</a></li>
					</ul></li>
				<li class="dropdown first-nav"><span><a href="order1/all_order.jsp">订单管理</a>
				</span>
					<ul class="sec-nav">
						<li><a href="order1/all_order.jsp">所有订单</a></li>
						<li><a href="#">退款&纠纷</a></li>
						<li><a href="#">订单批量导出</a></li>

					</ul></li>
				<li class="dropdown  first-nav" ><span><a href="Logistics1/logistic.jsp">物流管理</a><i
						class="icon icon-arrow"></i> </span>
					<ul class="sec-nav">
						<li><a href="Logistics1/logistic.jsp">物流信息</a></li>
					</ul></li>
				<li class="dropdown  first-nav"><span> <a
						href="messages1/messages.jsp">消息中心</a><i class="icon icon-arrow"></i>
				</span>
					<ul class="sec-nav">
						<li><a href="messages1/messages.jsp">站内信</a></li>
						<li><a href="#">垃圾箱</a></li>
						<li><a href="messages1/mes_terrace.jsp">系统消息</a></li>
						<li><a href="#">最新公告</a></li>
						<li><a href="messages1/messages.jsp">拒付通知</a></li>
						<li><a href="#">仲裁通知</a></li>
					</ul></li>
				<li class="first-nav"><span><a
						href="DP_ValueOfSales1.jsp">数据纵横</a> </span>
					<ul class="sec-nav">
						<li><a href="DP_ValueOfSales1.jsp">整体概况</a></li>
						<li><a href="#">商品分析</a></li>
					</ul></li>
				<li class="first-nav" ><span><a
						href="account1/account.jsp">账号及认证</a> </span>
					<ul class="sec-nav">
						<li><a href="account1/account.jsp">账号设置</a></li>
						<li><a href="account1/contact.jsp">联系人设置</a></li>
						<li><a href="account1/contact.jsp">年费发票</a></li>
					</ul></li>
			</ul>
		</div>
	</div>
</div>