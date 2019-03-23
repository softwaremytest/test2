<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:forEach items="${terraces }" var="terrace">
	<div class="blog-post">
		
			
			<div style="border:1px solid;width:650px;margin:10px;">
				<!-- 搜索 -->
					<main role="main" class="container" style="margin:10px;">
					<div class="row">
						<div class="col-md-6">
							<form class="form-horizontal" method="post"
								action="../ModifyInformAction">
								<div class="form-group">
									<div class="row">
										<label for="informTitle" class="col-sm-2 control-label">
											ID:</label>
										<div class="col-sm-10">
											<input type="text" name="informid" id="informid"
												class="form-control" placeholder="${terrace.id }" required>
										</div>
									</div>
								</div>
								<div class="form-group">
									<div class="row">
										<label for="informTitle" class="col-sm-2 control-label">
											标题:</label>
										<div class="col-sm-10">
											<input type="text" name="informTitle" id="informTitle"
												class="form-control" placeholder="${terrace.title }" required>
										</div>
									</div>
								</div>
								<div class="form-group">
									<div class="row">
										<label for="informContent" class="col-sm-2 control-label">
											内容:</label>
										<div class="col-sm-10">
											<textarea rows="10" name="informContent" id="informContent"
												class="form-control"
												placeholder="${terrace.content }"
												required></textarea>
										</div>
									</div>
								</div>
								<div class="form-group">
									<div class="row">
										<div class="col-md-8" style="position:relative;left:100px;">
											<button class="btn btn-lg btn-primary" type="submit">修改</button>
											<button class="btn btn-lg btn-secondary"
												onclick="javascript:history.go(-1);">取消</button>
										</div>
									</div>
								</div>
							</form>
						</div>
					</div>
					<!-- /.row --> </main>
				
				
			</div>
			
		
	</div>
</c:forEach>