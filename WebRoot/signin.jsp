<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Signin</title>

    <!-- Bootstrap core CSS -->
    <link href="./css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="./css/signin.css" rel="stylesheet">
  </head>

  <body class="text-center" style="background:url(img/bg.jpg) no-repeat 4px 5px;
    position: relative;background-size: cover;">
    <form class="form-signin" method="post" action="SigninAction" style="position: absolute;
    left: 0;right: 0; top: 0;bottom: 0;width: 500px;height: 300px;line-height: 40px;text-align: center;
    background:rgba(255,255,255,0.3);">
      <img class="mb-4" src="./images/bootstrap-solid.svg" alt="" width="72" height="72">
      <h1 class="h3 mb-3 font-weight-normal">请登录</h1>
      <input type="email" id="inputEmail" name="inputEmail" class="form-control" style="margin:5px;" placeholder="邮箱地址" required autofocus>
     
      <input type="password" id="inputPassword" name="inputPassword" class="form-control" style="margin:5px;" placeholder="密码" required>
     
      <select id="role" name="role" class="form-control" style="height:45px;margin:4px;" required>
        <option value="supplier">供应商</option>
        <option value="vending">借卖方</option>
        <option value="manager">管理员</option>
      </select>
      <div class="checkbox mb-3" style="height:55px;">
        <label>
          <input type="checkbox" value="remember-me" style="margin:5px;">记住我
        </label>
      </div>
      <button class="btn btn-lg btn-primary btn-block" style="margin:5px;" type="submit">登录</button>
      还没注册? <a href="signup.jsp">注册!</a>
      <p class="mt-5 mb-3 text-muted">&copy; 2018-2019</p>
    </form>
  </body>
</html>
