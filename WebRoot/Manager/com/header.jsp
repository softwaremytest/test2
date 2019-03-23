<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<header class="blog-header py-3">
	<div class="row flex-nowrap justify-content-between align-items-center" style="overflow:hidden;zoom:1;margin:10px;">
		<div class="col-4 pt-1"
			style="float: left; width:33.3%;height:100%">
			<p></p>
		</div>
		<div class="col-4 text-center"
			style="float: left;width:33.3%;height:100%">
			<a  style="color:#535353;font-size:20px;font-weight: bold;" href="sup_man.jsp">管理员</a>
		</div>
		<div class="col-4 d-flex justify-content-end align-items-center" style="float: left;width:33.3%;height:100%;">
			<a class="text-muted" href="#" style="padding:0px 10px 0px 50px;"> <svg
					xmlns="http://www.w3.org/2000/svg" width="20" height="20"
					viewBox="0 -3 24 24" fill="none" stroke="currentColor"
					stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
					class="mx-3" >
					<circle cx="10.5" cy="10.5" r="7.5"></circle>
					<line x1="21" y1="21" x2="15.8" y2="15.8"></line></svg>
			</a>
			<c:if test="${ empty User}">
				<a class="btn btn-sm btn-outline-secondary" href="../signin.jsp"
				 style="border:1px solid #aaa;color:#535353">登录</a>&nbsp;
             
			</c:if>
			<c:if test="${ not empty User}">
              Welcome,&nbsp;<a href="#" style="color:#535353">${User.realname}</a>&nbsp;
              <a class="btn btn-sm btn-outline-secondary" style="border:1px solid #aaa;color:#535353"
					href="../Mana_Signout">登出</a>
			</c:if>
		</div>
	</div>
</header>