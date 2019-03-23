<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<html lang="zh-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>味全</title>

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
<link rel="stylesheet" type="text/css" href="css/test1.css"/>

<style>
body {
	padding-top: 70px;
}
</style>

</head>

<body>

	<%@ include file="nav.jsp"%>

	<div class="container" style="position:relative;top:0px;left:0px">

		<!-- 列表组 -->
		<div class="row">

			<!-- 左边栏 -->
			<div class="col-md-3">
				<div class="list-group">
					<a href="login.jsp" class="list-group-item active">用户登录</a>
				</div>

				<div class="list-group">
					<a href="login2.jsp" class="list-group-item">管理员登录</a>
				</div>
			</div>

			<!-- 中间栏 -->
			<div class="col-md-9">
				<div class="panel panel-default">
					<div class="panel-heading">用户登录</div>
					<div class="panel-body">
						<p style="color:red">${error}</p>
						<form class="form-horizontal" id="form1" name="form1"
							method="post" action="LoginAction">
							<div class="form-group">
								<label for="inputEmail3" class="col-sm-2 control-label">用户名</label>
								<div class="col-sm-9">
									<input type="text" class="form-control" id="text1"
										name="userName" pattern="[a-Z0-9]{2,10}" required="required"
										placeholder="请输入用户名">
								</div>
							</div>

							<div class="form-group">
								<label for="inputPassword3" class="col-sm-2 control-label">密码</label>
								<div class="col-sm-9">
									<input type="password" class="form-control" id="text2"
										name="userPass" required="required" placeholder="请输入密码">
								</div>
							</div>

							<div class="form-group">
								<label for="inputPassword3" class="col-sm-2 control-label">校验码</label>
								<div class="col-sm-3">
									<img src="111111">
								</div>

								<div class="col-sm-3">
									<input type="text" class="form-control" id="text2" name="veri">
								</div>
							</div>

							<div class="form-group">
								<div class="col-sm-offset-2 col-sm-10">
									<div class="checkbox">
										<label> <input type="checkbox"> Remember me </label>
									</div>
								</div>
							</div>

							<div class="form-group">
								<div class="col-sm-offset-5 col-sm-6">
									<button type="submit" class="btn btn-default">登录</button>
									<button type="submit" class="btn btn-default">
										<a href="regUser.jsp">注册</a>
									</button>
								</div>
							</div>

						</form>
					</div>
				</div>
			</div>


		</div>
</body>
</html>
