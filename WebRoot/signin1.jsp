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
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/signin.css" rel="stylesheet">
  </head>

  <body class="text-center">
    <form class="form-signin" method="post" action="Signin">
      <img class="mb-4" src="./images/bootstrap-solid.svg" alt="" width="72" height="72">
      <h1 class="h3 mb-3 font-weight-normal">请登录</h1>
      <label for="inputEmail" class="sr-only">Email address</label>
      <input type="email" id="inputEmail" name="inputEmail" class="form-control" placeholder="邮箱地址" required autofocus>
      <label for="inputPassword" class="sr-only">Password</label>
      <input type="password" id="inputPassword" name="inputPassword" class="form-control" placeholder="密码" required>
      <div class="checkbox mb-3">
        <label>
          <input type="checkbox" value="remember-me" style="margin:5px;"> 记住我
        </label>
      </div>
      <button class="btn btn-lg btn-primary btn-block" type="submit">登录</button>
      还没注册? <a href="signup.jsp">注册!</a>
      <p class="mt-5 mb-3 text-muted">&copy; 2017-2018</p>
    </form>
  </body>
</html>
