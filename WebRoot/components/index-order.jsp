<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:forEach items="${orders }" var="order">
	<div class="blog-post">
		<div>
			
			<div>
				<a href="">
						<h2 class="blog-post-title">${order.id}</h2></a>
				<p class="blog-post-meta">
					&nbsp;&nbsp; by ${order.num }</a>.&nbsp;&nbsp; 
					剩余量:${order.goods}&nbsp;&nbsp;
					<img src="./images/font-visited.png" height="16">(${order.time }) 
					
				</p>
                
				<br>
				
			</div>
			<!-- /.blog-post -->
</c:forEach>