<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:forEach items="${vens }" var="ven">
	<div class="blog-post" style="top:55px;left:0px; position: relative;">
		
			
			<div style="border:1px solid;width:750px;margin:0px;margin-top:-30px;">
				<!-- 搜索 -->
					<main role="main" class="container" style="margin:4px;">
					<div class="row">
						<div class="col-md-8">
							<form class="form-horizontal" method="post"
								action="../ModifyInformAction">
								<div class="form-group">
									<div class="row" style="height:38px;">
									
										<label for="informTitle"  class="col-sm-2 control-label">
											${ven.account}</label>
										<label for="informTitle" class="col-sm-1 control-label">
											${ven.realname}</label>
										<label for="informTitle" class="col-sm-1 control-label">
											${ven.gender}</label>
										<label for="informTitle" class="col-sm-2 control-label">
											${ven.phone}</label>
										<label for="informTitle" class="col-sm-2 control-label">
											${ven.idNum}</label>
										<label for="informTitle" class="col-sm-2 control-label">
											${ven.state}</label>
										<input type="hidden" name="account" id="account" value="${ven.account}" />
										
										<button  type="submit" style="position:relative;top:6px;left:28px;">审核</button>	
									</div>
								</div>
								
							</form>
						</div>
					</div>
					<!-- /.row --> </main>
				
				
			</div>
			
		
	</div>
</c:forEach>
	