<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:forEach items="${sups }" var="sup">
	<div class="blog-post" style="top:55px;left:0px; position: relative;">
		
			
			<div style="border:1px solid;width:750px;margin:0px;margin-top:-30px;">
				<!-- 搜索 -->
					<main role="main" class="container" style="margin:4px;">
					<div class="row">
						<div class="col-md-8">
							<form class="form-horizontal" method="post"
								action="../ExamineServlet">
								<div class="form-group">
									<div class="row" style="height:35px;">
									
										<label for="informTitle"  class="col-sm-2 control-label">
											${sup.account}</label>
										<label for="informTitle" class="col-sm-1 control-label">
											${sup.realname}</label>
										<label for="informTitle" class="col-sm-1 control-label">
											${sup.gender}</label>
										<label for="informTitle" class="col-sm-2 control-label">
											${sup.phone}</label>
										<label for="informTitle" class="col-sm-2 control-label">
											${sup.idNum}</label>
										<label for="informTitle" class="col-sm-2 control-label">
											${sup.state}</label>
										<input type="hidden" name="account" id="account" value="${sup.account}" />
										
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
	