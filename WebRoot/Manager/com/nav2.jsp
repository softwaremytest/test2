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
					<li class="first-nav" style="position:relative;left:50px;width:240px;"><span><a href="sup_man.jsp">供应商管理</a>
					</span></li>
					<li class="first-nav" style="position:relative;left:50px;width:240px;background:#FF8C69;"><span><a
							href="vending.jsp">借卖方管理</a> </span></li>
					<li class="dropdown  first-nav" style="position:relative;left:50px;width:240px;"><span> <a
						href="others.jsp">其他管理</a><i class="icon icon-arrow"></i>
				</span>
					<ul class="sec-nav" style="width:240px;">
					<li><a href="others.jsp">店铺管理</a></li>
						<li><a href="others_product.jsp">产品管理</a></li>
						<li><a href="others_logistics.jsp">物流管理</a></li>
						<li><a href="others_others.jsp">多平台订单导入</a></li>
						<li><a href="others_pay.jsp">支付管理</a></li>
					</ul></li>
					<li class="dropdown first-nav" style="position:relative;left:50px;width:240px;"><span><a
							href="account.jsp">个人中心</a> </span></li>
					<li class="dropdown  first-nav" style="position:relative;left:50px;width:240px;"><span> <a
						href="messages.jsp">消息中心</a><i class="icon icon-arrow"></i>
				</span>
					<ul class="sec-nav" style="width:240px;">
					<li><a href="messages.jsp">发布通知</a></li>
						<li><a href="mes_management.jsp">管理通知</a></li>
						<li><a href="mes_examine.jsp">审核</a></li>
					</ul></li>
					
				</ul>
			</div>
		</div>
	</div>