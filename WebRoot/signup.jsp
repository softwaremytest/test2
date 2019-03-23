<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Signin Template for Bootstrap</title>

    <!-- Bootstrap core CSS -->
    <link href="./css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="./css/signup.css" rel="stylesheet">
  </head>

  <body class="text-center" style="background:url(img/bg.jpg) no-repeat 4px 5px;
    position: relative;background-size: cover;">
    <form class="form-signup" method="post" action="SignupAction" enctype="multipart/form-data" style="position: absolute;
    left: 0;right: 0; top: 0;bottom: 0;width: 500px;height: 750px;line-height: 50px;text-align: center;
    background:rgba(255,255,255,0.3);">
      <h1 class="h3 mb-3 font-weight-normal">请注册</h1>
      <label for="inputEmail" class="sr-only">Email address</label>
      <input type="email" id="inputEmail" name="inputEmail" class="form-control" placeholder="邮箱地址" required autofocus>
      <label for="inputPassword" class="sr-only">Password</label>
      <input type="password" id="inputPassword" name="inputPassword" class="form-control" placeholder="密码" required>
      <label for="confirmPassword" class="sr-only">Confirm password</label>
      <input type="password" id="confirmPassword" name="confirmPassword" class="form-control" placeholder="确认密码" required>
      <label for="gender" class="sr-only">Gender</label>
      <select id="gender" name="gender" class="form-control" required>
        <option value="f">Female</option>
        <option value="m">Male</option>
        <option value="x">Not sure</option>
      </select>
      <label for="phone" class="sr-only">Confirm password</label>
      <input type="text" id="phone" name="phone" class="form-control" placeholder="手机号码" required>
      <label for="realname" class="sr-only">Confirm password</label>
      <input type="text" id="realname" name="realname" class="form-control" placeholder="真实姓名" required>
      <label for="IdNum" class="sr-only">Confirm password</label>
      <input type="text" id="IdNum" name="IdNum" class="form-control" placeholder="身份证号码" required>
      <label for="ty" class="sr-only">type</label>
      <select id="ty" name="ty" class="form-control" required>
        <option value="supplier">供应商</option>
        <option value="vending">借卖方</option>
      </select>
      <label for="introduce" class="sr-only">Confirm password</label>
      <textarea id="introduce" name="introduce" class="form-control" placeholder="备注(少于1000)" rows="5" required></textarea>
<br/>
      <button class="btn btn-lg btn-primary btn-block" style="position: absolute;
     top: 640px;left:0px;" type="submit">注册</button>
      已注册? <a href="signin.jsp" style="position: absolute;
     top: 671px;left:200px;">登录!</a>
      <p class="mt-5 mb-3 text-muted" style="position: absolute;
     top: 650px;left:120px;">&copy; 2018-2019</p>
    </form>
  </body>
</html>
