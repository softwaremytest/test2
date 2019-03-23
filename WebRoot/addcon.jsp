<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="./images/favicon.ico">

    <title>新增联系人</title>

    <!-- Bootstrap core CSS -->
    <link href="./css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="./css/signup.css" rel="stylesheet">
  </head>

  <body class="text-center" style="background:url(img/bg.jpg) no-repeat 4px 5px;
    position: relative;background-size: cover;">
    <form class="form-signup" method="post" action="AddConAction" enctype="multipart/form-data" style="position: absolute;
    left: 0;right: 0; top: 0;bottom: 0;width: 500px;height:600px;line-height: 0px;text-align: center;
    background:rgba(255,255,255,0.3);">
      <img class="mb-4" src="./images/bootstrap-solid.svg" alt="" width="72" height="72">
      <h1 class="h3 mb-3 font-weight-normal">添加新联系人</h1>
      <label for="inputEmail" class="sr-only">Email address</label>
      <input type="email" id="inputEmail" name="inputEmail" class="form-control" placeholder="邮箱地址" required autofocus>

      <label for="gender" class="sr-only">Gender</label>
      <select id="gender" name="gender" class="form-control" required>
        <option value="f">F</option>
        <option value="m">M</option>
        <option value="x">Not sure</option>
      </select>
      <label for="phone" class="sr-only">phone</label>
      <input type="text" id="phone" name="phone" class="form-control" placeholder="手机号码" required>
      <label for="zphone" class="sr-only">zphone</label>
      <input type="text" id="zphone" name="zphone" class="form-control" placeholder="座机" required>
      <label for="name" class="sr-only">name</label>
      <input type="text" id="name" name="name" class="form-control" placeholder="姓名" required>
      <label for="job" class="sr-only">job</label>
      <input type="text" id="job" name="job" class="form-control" placeholder="职位" required>
      <label for="remark" class="sr-only">Confirm password</label>
      <textarea id="remark" name="remark" class="form-control" placeholder="备注(少于50)" rows="5" required></textarea>
<br/>
      <button class="btn btn-lg btn-primary btn-block" type="submit">添加</button>
      <p class="mt-5 mb-3 text-muted">&copy; 2018-2019</p>
    </form>
  </body>
</html>