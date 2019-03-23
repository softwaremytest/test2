<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Modify</title>

    <!-- Bootstrap core CSS -->
    <link href="./css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="./css/signup.css" rel="stylesheet">
  </head>

  <body class="text-center">
    <form class="form-signup" method="post" action="ModifyAction" enctype="multipart/form-data">
      <img class="mb-4" src="./images/bootstrap-solid.svg" alt="" width="72" height="72">
      <h1 class="h3 mb-3 font-weight-normal">修改账户信息</h1>
      
      
      
      <label for="Password" class="sr-only">Password</label>
      <input type="password" id="Password" name="Password" class="form-control" placeholder="密码" required>
      
     
      <label for="Phone" class="sr-only">Phone</label>
      <input type="text" id="Phone" name="Phone" class="form-control" placeholder="手机号码" required>
      <label for="mgender" class="sr-only">Gender</label>
      <select id="mgender" name="mgender" class="form-control" required>
        <option value="f">f</option>
        <option value="m">m</option>
        <option value="x">x</option>
      </select>
      
      
      
<br/>
      
      <button class="btn btn-lg btn-primary btn-block" type="submit">修改</button>
       <a href="signin.jsp">登录!</a>
      <p class="mt-5 mb-3 text-muted">&copy; 2018-2019</p>
    </form>
  </body>
</html>
